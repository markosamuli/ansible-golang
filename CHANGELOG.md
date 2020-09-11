# Changelog

## [2.0.2] - 2020-09-11

### Changed

- Add macOS Catalina and Ubuntu 20.04 LTS into supported platforms in Ansible
  Galaxy metadata

## [2.0.1] - 2020-09-10

### Added

- Travis: Run builds on macOS 10.15 (Catalina) with Xcode 12
- Travis: Use `Brewfile.travis` to install build dependencies

### Fixed

- Install `@latest` packages

### Removed

- Travis: Do not run macOS 10.14 (Mojave) builds with Xcode 10.2.1

## [2.0.0] - 2020-09-05

### Breaking changes

- Local development tools require Python 3.7 or newer
- Installing Go 1.15 from APT packages is not supported on Debian buster and
  Ubuntu xenial

### Fixed

- Go version check if the displayed version has only major.minor parts
- Idempotence test when checking the shell profile scripts
- Do not change Go workspace directory permissions recursively

### Changed

- Install Go version 1.15
- Role requires minimum Go version 1.13 to be installed
- Upgrade pre-commit to v2.7.0
- Upgrade ansible-lint to v4.3.3
- `gopkgs` command install path
- Remove support for the non-LTS Ubuntu `eoan` release
- Install Go from binary packages on Debian buster and Ubuntu xenial

## [1.3.1] - 2020-07-01

### Fixed

- Change `github.com/TrueFurby/go-callvis` to `github.com/ofabry/go-callvis`
- Fail version check if `go` binary is not found

## [1.3.0] - 2020-02-16

### Added

- Add `golang_version` variable for configuring installed version on macOS
  and Ubuntu
- Enable backports repository on [Debian Buster][buster]
- Test with Ansible 2.9
- Test with [Ubuntu 19.10 (Eoan Ermine)][eoan]

### Changed

- Install Go version 1.13 using versioned installation package from Homebrew
  and PPA repositories
- Install Go packages with `GO111MODULES=on`
- Test with Ansible 2.9

### Deprecated

- The role requires Go version 1.12, support for older versions is deprecated
- The role requires Ansible 2.7, support for older versions is deprecated

### Removed

- Do not install `golang-golang-x-tools` package on Ubuntu
- Do not test on [Debian Stretch][stretch]
- Do not test with Ansible 2.6

### Fixed

- Check that `GOROOT` or `GIMME_ENV` environment variables are not set when
  running the role

[eoan]: http://releases.ubuntu.com/19.10/
[buster]: https://wiki.debian.org/DebianBuster
[stretch]: https://wiki.debian.org/DebianStretch

## [1.2.1] - 2019-11-10

- Check that user `HOME` is not pointing to `/root`
- Check that Git is installed if installing packages

## [1.2.0] - 2019-11-03

- Changed default `GOPATH` from `~/Projects/golang` to `~/go`
- Install common packages during install
- Add `GO111MODULES` environment variable into shell configuration

## [1.1.0] - 2019-07-16

- Minimum Ansible version 2.6
- Add support for macOS 10.13 (High Sierra)
- Add support for Debian
- Remove support for macOS 10.12 (Sierra) and older
- Optional shell script initialization

## [1.0.0] - 2018-12-16

Initial version.

[unreleased]: https://github.com/markosamuli/ansible-golang/commits/develop
[2.0.1]: https://github.com/markosamuli/ansible-golang/releases/tag/v2.0.1
[2.0.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v2.0.0
[1.3.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.3.0
[1.2.1]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.2.1
[1.2.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.2.0
[1.1.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.1.0
[1.0.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.0.0
