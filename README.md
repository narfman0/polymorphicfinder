<p align="center">
  <img src="polymorphicfinder.png" alt="Polymorphicfinder Icon"/>
</p>

# Polymorphicfinder

[![Gem Version](https://badge.fury.io/rb/polymorphicfinder.svg)](http://badge.fury.io/rb/polymorphicfinder)

Identify and report polymorphic tables in rails projects

## Table of Contents

  - [Features](#features)
  - [Screencasts](#screencasts)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Tests](#tests)
  - [Versioning](#versioning)
  - [Code of Conduct](#code-of-conduct)
  - [Contributions](#contributions)
  - [License](#license)
  - [History](#history)
  - [Credits](#credits)

## Requirements

1. [Ruby 2.7.0](https://www.ruby-lang.org)

## Setup

To install, run:

    gem install polymorphicfinder


## Usage

    polymorphicfinder ModelName

This will return an array identifying polymorphic associations.
Note: add other checks in your own code, e.g. audits or paranoia
specific logic

## Tests

To test, run:

    bundle exec rake

## TODO

* unit tests
* publish gem

## Versioning

Read [Semantic Versioning](https://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

## Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By
participating in this project you agree to abide by its terms.

## Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

## License

Copyright 2020 []().
Read [LICENSE](LICENSE.md) for details.

## History

Read [CHANGES](CHANGES.md) for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).

## Credits

Developed by [Jon Robison]() at
[]().
