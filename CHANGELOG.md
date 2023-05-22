# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
### Changed
### Fixed
### Removed

## [2.0.5] 2023-05-22
### Fixed
- install_tasks and Railtie loading of rake tasks
### Changed
- tasks.rake => tasks.rb

## [2.0.4] 2023-05-21
### Fixed
- Ship rake tasks in gem package

## [2.0.3] 2023-05-19
### Fixed
- Fix rake_tasks hook on Railtie

## [2.0.2] 2023-05-17 [YANKED]
### Fixed
- Copyright year
- CHANGELOG version numbers and release dates
- Ruby version rules target - `standard-rubocop-lts: config/ruby-3.2.yml`
- SECURITY documentation
- CI runs on Ruby 3.2

## [2.0.1] 2023-05-17 [YANKED]
### Added
- Initial release
  - Configs for:
    - rubocop
    - rubocop-gradual
    - rubocop-md
    - rubocop-rake
    - rubocop-shopify
    - rubocop-thread_safety
    - standard
    - standard-performance
    - standard-custom
  - And optionally, if you are using RSpec:
    - rubocop-rspec
  - And optionally, if you are building a RubyGem:
    - rubocop-packaging
  - And optionally, if you are building a Rails app:
    - betterlint
    - standard-rails
  - version_gem

[Unreleased]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.5...HEAD
[2.0.5]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.4...v2.0.5
[2.0.4]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.3...v2.0.4
[2.0.3]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.2...v2.0.3
[2.0.2]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.1...v2.0.2
[2.0.1]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/91d4f2ff323ce25ebe8476244d50bb786fbb78f9...v2.0.1
