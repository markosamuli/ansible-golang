# markosamuli.golang

[![GitHub release](https://img.shields.io/github/release/markosamuli/ansible-golang.svg)](https://github.com/markosamuli/ansible-golang/releases)
[![License](https://img.shields.io/github/license/markosamuli/ansible-golang.svg)](https://github.com/markosamuli/ansible-golang/blob/master/LICENSE)

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

## Configuration

Configure [`GOPATH`][GOPATH] for Go projects:

```yaml
golang_path: "Projects/golang"
```

Update `GOPATH` and `PATH` in `.bashrc` and `.zshrc`:

```yaml
golang_init_shell: true
```

You should disable `golang_init_shell` if you're managing your shell
scripts using [`.dotfiles`][dotfiles] and don't want to mess up them.

[GOPATH]: https://github.com/golang/go/wiki/GOPATH
[dotfiles]: https://dotfiles.github.io

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
