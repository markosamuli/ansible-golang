# markosamuli.golang

[![GitHub release](https://img.shields.io/github/release/markosamuli/ansible-golang.svg)](https://github.com/markosamuli/ansible-golang/releases)
[![License](https://img.shields.io/github/license/markosamuli/ansible-golang.svg)](https://github.com/markosamuli/ansible-golang/blob/master/LICENSE)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

| Branch  | Status |
|---------|--------|
| master  | [![Build Status](https://travis-ci.org/markosamuli/ansible-golang.svg?branch=master)](https://travis-ci.org/markosamuli/ansible-golang)
| develop | [![Build Status](https://travis-ci.org/markosamuli/ansible-golang.svg?branch=develop)](https://travis-ci.org/markosamuli/ansible-golang)

Ansible role to install [Go programming language] and development environment
on Ubuntu and macOS.

Used for setting up my workstations in the following playbooks:

- [markosamuli/linux-machine][linux-machine]
- [markosamuli/macos-machine][macos-machine]

[Go programming language]: https://golang.org/
[linux-machine]: https://github.com/markosamuli/linux-machine
[macos-machine]: https://github.com/markosamuli/macos-machine

## Go version

This role will install the Go version 1.15 from your package manager:

- [`go@1.15`][brew-go] Homebrew Formula on macOS
- `golang-1.15` package from [golang-backports] PPA on Ubuntu

The role expects the package manager to provide minimum Go version 1.13.

[brew-go]: https://formulae.brew.sh/formula/go
[golang-backports]: https://launchpad.net/~longsleep/+archive/ubuntu/golang-backports

## Configuration

To change Go version to 1.12:

```yaml
golang_version: "1.12"
```

Configure [`GOPATH`][GOPATH] for Go projects:

```yaml
golang_path: "go"
```

The path is relative to the current user home directory, for
example `golang_path: "Projects/go"` will become `~/Projects/go`.

Update `GOPATH` and `PATH` in `.bashrc` and `.zshrc`:

```yaml
golang_init_shell: true
```

You should disable `golang_init_shell` if you're managing your shell
scripts using [`.dotfiles`][dotfiles] and don't want to mess up them.

To use Go modules with `GO111MODULES=auto`:

```yaml
golang_modules: true
```

[GOPATH]: https://github.com/golang/go/wiki/GOPATH
[dotfiles]: https://dotfiles.github.io

## Development tools

The following development tools are installed:

- [golint] is a linter for Go source code
- [goimports] is a tool for updating your Go import lines
- [errcheck] is a program for checking for unchecked errors in go programs
- [go-callvis] is a development tool to help visualize call graph of a Go
  program using interactive view
- [gopkgs] is a tool that provides list of available Go packages that can be
  imported
- [Stringer][stringer] is a tool to automate the creation of methods that
  satisfy the fmt.Stringer interface
- [guru] is a tool for answering questions about Go source code
- [staticcheck] is a linter for Go source code

To add or remove installed packages, update the list in `golang_packages`:

```yaml
golang_packages:
  - name: github.com/kisielk/errcheck
  - name: github.com/TrueFurby/go-callvis
  - name: golang.org/x/lint
  - name: golang.org/x/tools/cmd/goimports
  - name: golang.org/x/tools/cmd/stringer
  - name: golang.org/x/tools/cmd/guru
  - name: honnef.co/go/tools/cmd/staticcheck
  - name: github.com/uudashr/gopkgs@v2
```

Above packages will be installed with `GO111MODULES=on` set.

Make sure Git is installed if installing packages or the role will fail.

[golint]: https://godoc.org/golang.org/x/lint
[goimports]: https://godoc.org/golang.org/x/tools/cmd/goimports
[errcheck]: https://github.com/kisielk/errcheck
[go-callvis]: https://github.com/ofabry/go-callvis
[gopkgs]: https://github.com/uudashr/gopkgs
[stringer]: https://godoc.org/golang.org/x/tools/cmd/stringer
[guru]: https://godoc.org/golang.org/x/tools/cmd/guru
[staticcheck]: https://godoc.org/honnef.co/go/tools/staticcheck

## Install Git hooks

Install `pre-commit`, `pre-push` and `commit-msg` Git hooks:

```bash
make install-git-hooks
```

## Coding style

Install pre-commit hooks and validate coding style:

```bash
make lint
```

## Run tests

Run tests in Ubuntu and Debian using Docker:

```bash
make test
```

## License

[MIT](LICENSE)

## Author Information

- [@markosamuli](https://github.com/markosamuli)
