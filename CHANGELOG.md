# Changelog

## [Unreleased][unreleased] - 2020-02-16

- Use versioned installation package from Homebrew and PPA repositories
- Install Go version 1.13
- The role requires Go version 1.12
- Add `golang_version` variable for configuring installed version on macOS
  and Ubuntu
- Install Go packages with `GO111MODULES=on`
- Do not install `golang-golang-x-tools` package on Ubuntu
- Test image for [Ubuntu 19.10 (Eoan Ermine)][eoan]
- Enable backports repository on [Debian Buster][buster]
- Do not test on [Debian Stretch][stretch]

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
[1.2.1]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.2.1
[1.2.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.2.0
[1.1.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.1.0
[1.0.0]: https://github.com/markosamuli/ansible-golang/releases/tag/v1.0.0
