# Vim configuration

Mostly abandoned vim configuration, but still mostly operational.

## Installation

Just clone this repository, `cd` into it and run:

```bash
$ ./install.sh
```

It will symlink `vimrc.symlink` to `~/.vimrc`, `gvimrc.symlink` to `~/.gvimrc`,
and this directory to `~/.vim`. `~/.(g)vimrc` and `~/.vim` will be overridden
if present, but confirmation will be asked before doing that. After symlinking,
[vim-plug](https://github.com/junegunn/vim-plug) will be downloaded and vim
will be opened to install plugins. The first time it opens, it will give a
bunch of errors because plugins are not there yet. Just hit `<return>` so that
vim actually starts and plugins are installed.

## License

MIT Andrea Leopardi, &copy; 2015
