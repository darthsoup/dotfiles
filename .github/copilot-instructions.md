# Copilot Instructions

## Overview

Personal dotfiles for macOS (also supports Linux/WSL2). All dotfiles are **symlinked** into `$HOME` — edits in the repo take effect immediately without re-running the installer.

## Installation

```bash
bash install            # symlink dotfiles + set up shell/editor tooling
bash install --brew     # also install all packages from Brewfile
```

The install script backs up any existing file/directory to `<name>.backup` before linking.

## Repository Structure

| Path | Symlinked to | Purpose |
|------|-------------|---------|
| `.zshrc`, `.zprofile`, `zsh/` | `~/` | Zsh config and plugins |
| `.gitconfig`, `.gitignore`, `.gitattributes` | `~/` | Git config |
| `.tmux.conf`, `.curlrc`, `.wgetrc` | `~/` | Tool configs |
| `nvim/` | `~/.config/nvim` | Neovim config |
| `vscode/settings.json`, `vscode/extensions.json` | `~/.vscode/` | VS Code config |
| `starship/starship.toml` | manual | Starship prompt |

## Key Conventions

### Adding a dotfile to the installer
- Simple top-level files: add the filename to the `dotfiles` array in `link_dotfiles()` inside `install`.
- Configs that land in non-`$HOME` paths (like Neovim's `~/.config/nvim`): add a dedicated `link_*` function following the same guard pattern (`[[ -L "$dst" && "$(readlink "$dst")" == "$src" ]]`).

### Zsh
- Plugins are managed by **Znap** (installed to `~/.local/share/zsh/znap`), declared in `zsh/plugins.zsh`.
- Aliases are split by platform: `zsh/aliases.zsh` (shared), `zsh/aliases_osx.zsh`, `zsh/aliases_linux.zsh`.
- Update Znap and all plugins: `znap pull`

### Neovim
- Plugin manager: **lazy.nvim** (auto-installed on first launch).
- Entry point: `nvim/init.lua` → loads `lua/config/{options,keymaps,lazy}.lua`.
- Each plugin has its own file under `nvim/lua/plugins/`.
- Update plugins inside Neovim: `:Lazy update`

### Git
- User identity (`name`/`email`) is **not** stored in the repo — it lives in `~/.gitconfig.local` (created interactively by the installer).
- `.gitconfig` includes `.gitconfig.local` at the end so local settings override repo defaults.

### Brewfile
- Add new CLI tools under the `# CLI` or `# Development` sections with an inline comment explaining the tool.
- Apply changes: `brew bundle --file=Brewfile`

## Documentation

- Update README.md when adding new features or commands
