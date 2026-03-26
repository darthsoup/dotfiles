# darthsoup's dotfiles

My personal dotfiles

This setup is mainly intended for macOS, but should also work under Linux or Windows (WSL2).

## Installation

Clone the repo into your home directory and run the install script.

```
git clone git@github.com:darthsoup/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install
```

Dotfiles are symlinked into `$HOME`, so any edits in the repo take effect immediately.

To also install all packages and apps from the Brewfile, pass `--brew`:

```
bash install --brew
```

## Configuration

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

Don't forget to add your `.gitconfig.local` file

```ini
[user]
	name = 'Your Name'
	email = 'your@email.com'
```

## License

See the bundled [LICENSE](https://github.com/darthsoup/dotfiles/blob/master/LICENSE.md) file for details.
