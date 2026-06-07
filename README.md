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

### neovim

Neovim uses [lazy.nvim](https://lazy.folke.io) for plugin management. Plugins are installed automatically on the first launch.

To update all plugins, run inside Neovim:

```vim
:Lazy update
```

### git

Don't forget to add your `.gitconfig.local` file

```ini
[user]
	name = 'Your Name'
	email = 'your@email.com'
```

### Claude Code

Global [Claude Code](https://claude.ai/code) settings live in `claude/settings.json` and are symlinked to `~/.claude/settings.json`. Edits in the repo take effect immediately. Per-machine overrides belong in `~/.claude/settings.local.json`, which is intentionally not tracked.

## License

See the bundled [LICENSE](https://github.com/darthsoup/dotfiles/blob/master/LICENSE.md) file for details.
