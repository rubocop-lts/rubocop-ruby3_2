# Changelog

[![SemVer 2.0.0][📌semver-img]][📌semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][📗keep-changelog],
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html),
and [yes][📌major-versions-not-sacred], platform and engine support are part of the [public API][📌semver-breaking].
Please file a bug if you notice a violation of semantic versioning.

[📌semver]: https://semver.org/spec/v2.0.0.html
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

## [Unreleased]

### Added

- Added support for JRuby 10.1 and TruffleRuby 34.0.

### Changed

- Retemplated project metadata and CI/development automation with `kettle-jem` v7.0.0.

### Deprecated

### Removed

### Fixed

- Restored `docs/CNAME` so the generated documentation site keeps its custom domain.
- Corrected misspelled contact metadata to use `galtzo.com`.

### Security

## [3.0.2] 2026-06-01
### Added
### Changed
- Corrected gem metadata to declare the Ruby 3.2 runtime floor that has been implicit since the last major release.
- Updated dependency floors:
  - `version_gem` to `~> 1.1`, `>= 1.1.9`.
  - `rubocop-gradual` to `~> 0.3`, `>= 0.3.6`.
  - `rubocop-md` to `~> 2.0`, `>= 2.0.4`.
  - `rubocop-rake` to `~> 0.7`, `>= 0.7.1`.
  - `rubocop-thread_safety` to `~> 0.7`, `>= 0.7.3`.
  - `standard-rubocop-lts` to `~> 2.0`, `>= 2.0.3`.
  - Release, lint, documentation, and test dependencies to their latest compatible floors.
- Updated direct dependency floors and moved `rubocop-md` to plugin loading.
### Fixed
### Removed

## [3.0.1] 2026-06-01
### Added
### Changed
- Load `rubocop-thread_safety` through RuboCop's plugin API.
### Fixed
### Removed

## [3.0.0] 2026-05-30
### Added
### Changed
- Tidelift for Reporting Security vulnerabilities
- Updated `standard-rubocop-lts` dependency to the `2.x` series.
### Fixed
### Removed
- rubocop-shopify because they boiled the ocean
  - turning cops off isn't copacetic with the goal of strict compatibility

## [2.0.7] 2023-06-13
### Changed
- Moved development dependencies out of gemspec
- rubocop to 1.52.1
- rubocop-shopify to 2.14
- standard-custom to 1.0.1
- standard-rubocop-lts to 1.0.7
- version_gem to 1.1.3
### Fixed
- rubocop/rails.yml config
  - betterlint integration
  - standard-rails integration
- bin/pry now pre-loads this library

## [2.0.6] 2023-06-05
### Added
- Dependencies
  - yard-junk
  - redcarpet
  - pry, IRB alternative
  - pry-suite
  - debase,  for IDE debugging
- Some rules should ignore specs/tests
  - Style/MethodCallWithArgsParentheses
  - Style/ClassAndModuleChildren
### Fixed
- `yard` documentation task
### Changed
- Added Include to inherit_mode: merge
- Updated dependency on standard-rubocop-lts

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

[Unreleased]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v3.0.2...HEAD
[2.0.7]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.6...v2.0.7
[2.0.6]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.5...v2.0.6
[2.0.5]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.4...v2.0.5
[2.0.4]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.3...v2.0.4
[2.0.3]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.2...v2.0.3
[2.0.2]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.1...v2.0.2
[2.0.1]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/91d4f2ff323ce25ebe8476244d50bb786fbb78f9...v2.0.1
[3.0.1]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v3.0.0...v3.0.1
[3.0.0]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.7...v3.0.0
[3.0.2]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v3.0.1...v3.0.2
