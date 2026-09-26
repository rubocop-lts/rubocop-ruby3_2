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

- kettle-jem-template-20260913-001 - Templating now also surfaces a review
  entry in `dependency_conflicts.resolve` when a direct development
  dependency doesn't support one or more of this project's declared
  `engines:` and has no template-managed modular home (e.g. `sqlite3` on
  `jruby`). Review each entry and pick a resolution per the project's own
  engine support needs.

### Changed

- Make package metadata identify the Ruby 3.2 ruleset target.

- [kc] kettle-jem/prepare: updated 12 project files:
  - dependencies (12)

- [kc] kettle-jem/template: updated 23 project files:
  - code and tests (1)
  - dependencies (3)
  - other (1)
  - workflows (18)

### Deprecated

### Removed

### Fixed

### Security

## [3.0.8] - 2026-09-09

- TAG: [v3.0.8][3.0.8t]
- COVERAGE: 100.00% -- 16/16 lines in 3 files
- BRANCH COVERAGE: 0.00% -- 0/0 branches in 3 files
- 71.43% documented

### Added

- kettle-jem-template-20260720-005 - README Support & Community links now
  include RubyForum.
- kettle-jem-template-20260726-001 - Projects now include YARD lint
  configuration and documentation dependencies so documentation issues fail
  before generated docs are refreshed.
- kettle-jem-template-20260727-001 - Spec harness documentation now lists the
  RSpec helpers provided by `kettle-test`.

### Changed

- kettle-jem-template-20260716-002 - Gemspecs now ship fewer repository-only
  files, reducing package noise for downstream packagers.
- kettle-jem-template-20260720-002 - Development Gemfiles now use the released
  `tree_sitter_language_pack` gem 1.13.3 or newer by default.
- kettle-jem-template-20260725-002 - Version specs now use `anonymous_loader` to
  cover `version.rb` without redefining constants, or are removed when version
  specs are not managed for the project.
- kettle-jem-template-20260728-001 - Generated Ruby workflows now use clearer
  setup-ruby-flash planning and can prepare appraisal-only jobs without
  installing the main Gemfile bundle.

- kettle-jem-template-20260801-001 - Generated README gem dashboard links now
  use ClickGems instead of BestGems.

- Require standard-rubocop-lts 2.0.11 or newer so this profile loads the shared rubocop-lts-ruby API availability checks.

- [kc] kettle-jem/prepare: updated 39 project files:
  - configuration (1)
  - dependencies (38)

- [kc] kettle-jem/template: updated 44 project files:
  - code and tests (4)
  - configuration (1)
  - dependencies (25)
  - documentation (3)
  - other (10)
  - workflows (1)

### Fixed

- kettle-jem-template-20260720-003 - StructuredMerge Git diff driver config now
  uses the installed `smorg-rb` driver command.
- kettle-jem-template-20260725-001 - Release pull request branches beginning
  with `feature/release` now run JRuby and TruffleRuby workflows.
- kettle-jem-template-20260726-002 - Generated version files now document their
  version namespace and constants, reducing warning-only YARD lint output.
- kettle-jem-template-20260726-003 - Coverage upload steps now treat Coveralls,
  QLTY, and Codecov as optional, so provider outages do not fail CI when local
  coverage thresholds still pass.
- kettle-jem-template-20260728-002 - Generated RuboCop configs now ignore the
  same `gemfiles/vendor/bundle` tree as `.gitignore`, so vendored dependency
  installs are not reported as project lint debt.
- kettle-jem-template-20260728-003 - Generated dep-heads workflows now run
  TruffleRuby jobs with current RubyGems and Bundler, avoiding setup failures
  before the test suite starts.
- kettle-jem-template-20260728-004 - Generated dep-heads workflows now use the
  setup-ruby Bundler install path for direct appraisal Gemfiles, avoiding rv
  lockfile parser failures on Git and path dependencies.
- kettle-jem-template-20260728-005 - VersionGem bootstrap now creates the
  missing canonical version spec when a project only has shim namespace version
  specs.
- kettle-jem-template-20260730-001 - Gemspec package file enumeration now runs
  relative to the gemspec directory, so release package contents stay correct
  even when the gemspec is loaded from another working directory.

- kettle-jem-template-20260801-002 - Generated RSpec helpers now normalize
  managed configuration block bindings structurally, preventing mixed block
  parameter names from producing invalid configuration after a merge.
- kettle-jem-template-20260801-003 - Generated project metadata and
  documentation now normalize configured underscore hostnames to valid
  hyphenated hostnames.
- kettle-jem-template-20260801-004 - Generated organization README logos now
  use GitHub's stable organization avatar endpoint instead of assuming a
  matching Galtzo-hosted asset exists.

- kettle-jem-template-20260802-001 - Devcontainer JSON files now merge as JSONC,
  preserving comments and trailing commas during template updates.

- Exclude optional integration hooks from default coverage scope.

- Repair README Standard Ruby references and advanced-usage navigation.

## [3.0.7] - 2026-07-03

- TAG: [v3.0.7][3.0.7t]
- COVERAGE: 55.17% -- 16/29 lines in 5 files
- BRANCH COVERAGE: 0.00% -- 0/2 branches in 5 files
- 42.86% documented

### Fixed

- Package configured license files in gem release file lists.

## [3.0.6] - 2026-06-28

- TAG: [v3.0.6][3.0.6t]
- COVERAGE: 55.17% -- 16/29 lines in 5 files
- BRANCH COVERAGE: 0.00% -- 0/2 branches in 5 files
- 42.86% documented

## [3.0.5] - 2026-06-26

- TAG: [v3.0.5][3.0.5t]
- COVERAGE: 55.17% -- 16/29 lines in 5 files
- BRANCH COVERAGE: 0.00% -- 0/2 branches in 5 files
- 42.86% documented

### Fixed

- Restored the destination `spec.files` package declaration so the built gem
  includes its `rubocop-lts/*.yml` RuboCop configuration files.

## [3.0.4] - 2026-06-25

- TAG: [v3.0.4][3.0.4t]
- COVERAGE: 55.17% -- 16/29 lines in 5 files
- BRANCH COVERAGE: 0.00% -- 0/2 branches in 5 files
- 42.86% documented

### Added

- Added support for JRuby 10.1 and TruffleRuby 34.0.

### Changed

- Retemplated project metadata and CI/development automation with `kettle-jem` v7.0.0.

### Fixed

- Restored `docs/CNAME` so the generated documentation site keeps its custom domain.
- Corrected misspelled contact metadata to use `galtzo.com`.

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

[Unreleased]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.8...HEAD
[3.0.8]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.7...v3.0.8
[3.0.8t]: https://github.com/rubocop-lts/rubocop-ruby3_2/releases/tag/v3.0.8
[3.0.7]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.6...v3.0.7
[3.0.7t]: https://github.com/rubocop-lts/rubocop-ruby3_2/releases/tag/v3.0.7
[3.0.6]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.5...v3.0.6
[3.0.6t]: https://github.com/rubocop-lts/rubocop-ruby3_2/releases/tag/v3.0.6
[3.0.5]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.4...v3.0.5
[3.0.5t]: https://github.com/rubocop-lts/rubocop-ruby3_2/releases/tag/v3.0.5
[3.0.4]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/v3.0.2...v3.0.4
[3.0.4t]: https://github.com/rubocop-lts/rubocop-ruby3_2/releases/tag/v3.0.4
[3.0.2]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v3.0.1...v3.0.2
[3.0.1]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v3.0.0...v3.0.1
[3.0.0]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.7...v3.0.0
[2.0.7]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.6...v2.0.7
[2.0.6]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.5...v2.0.6
[2.0.5]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.4...v2.0.5
[2.0.4]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.3...v2.0.4
[2.0.3]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.2...v2.0.3
[2.0.2]: https://gitlab.com/rubocop-lts/rubocop-ruby3_2/-/compare/v2.0.1...v2.0.2
[2.0.1]: https://github.com/rubocop-lts/rubocop-ruby3_2/compare/91d4f2ff323ce25ebe8476244d50bb786fbb78f9...v2.0.1
