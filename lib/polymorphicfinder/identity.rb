# frozen_string_literal: true

module Polymorphicfinder
  # Gem identity information.
  module Identity
    def self.name
      "polymorphicfinder"
    end

    def self.label
      "Polymorphicfinder"
    end

    def self.version
      "0.1.0"
    end

    def self.version_label
      "#{label} #{version}"
    end
  end
end
