# rudolph9’s dotfiles

## Installation

```bash
git clone https://github.com/rudolph9/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```
To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```
### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/rudolph9/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

## History

Forked from [mathiasbynenes/dotfiles](https://github.com/mathiasbynens/dotfiles).