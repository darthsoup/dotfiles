# darthsoup's dotfiles

My personal dotfiles

This setup is mainly intended for macOS, but should also work under Linux or Windows (WSL2).

## Installation

To install, simply clone the repo into your user directory and run the install script.

```
git clone git@github.com:darthsoup/dotfiles.git
cd dotfiles
sh install
```

### zsh

To update Znap and all of your plugins/repos simultaneously, run

```bash
znap pull
```

### vim

Vim makes use of minpac for plugin management. At the first start-up call:

```vim
:PacSetup
```

To update minpac and all of your plugins/repos simultaneously, run

```vim
:PacUpdate
```

### git

dont forget to add your `.gitconfig.local` file

```ini
[user]
	name = 'Your Name'
	email = 'your@email.com'
```

## License

See the bundled [LICENSE](https://github.com/darthsoup/dotfiles/blob/master/LICENSE.md) file for details.
