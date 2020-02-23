# frozen_string_literal: true

require "polymorphicfinder/identity"
require "polymorphicfinder/cli"

class PolymorphicFinder
  TYPE_SUFFIX_REGEX = /_type$/.freeze

  def self.find(model_name)
    ActiveRecord::Base.connection.tables.map do |table_name|
      model_name_occurs_in_table?(table_name, model_name) ? table_name : nil
    end.compact
  end

  def self.occurrences(model_name)
    ActiveRecord::Base.connection.tables.map do |table_name|
      occurrences = occurrences_of_model_name_in_table(table_name, model_name)
      if occurrences.zero?
        nil
      else
        "#{occurrences} occurrences in #{table_name}"
      end
    end.compact
  end

  private_class_method def self.model_name_occurs_in_table?(table_name, model_name)
    columns = columns_with_polymorphic_types_for_table(table_name)
    return false if columns.empty?

    sub_query = column_clause(columns, model_name, table_name)
    query = <<-SQL
      SELECT * FROM #{table_name} WHERE (#{sub_query}) LIMIT 1
    SQL

    return ActiveRecord::Base.connection.execute(query).ntuples > 0
  end

  private_class_method def self.occurrences_of_model_name_in_table(table_name, model_name)
    columns = columns_with_polymorphic_types_for_table(table_name)
    return 0 if columns.empty?

    sub_query = column_clause(columns, model_name, table_name)
    query = <<-SQL
      SELECT COUNT(*) FROM #{table_name} WHERE (#{sub_query})
    SQL

    return ActiveRecord::Base.connection.execute(query).first["count"]
  end

  private_class_method def self.column_clause(columns, model_name, table_name)
    columns.map do |column|
      "#{column.name} = '#{model_name}'"
    end.join(" OR ")
  end

  private_class_method def self.columns_with_polymorphic_types_for_table(table_name)
    return ActiveRecord::Base.connection.columns(table_name).select do |column|
      column.type == :string && column.name.match?(TYPE_SUFFIX_REGEX)
    end
  end
end
