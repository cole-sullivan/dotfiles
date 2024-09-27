```
.
├── .config                 # Configuration for various installed packages
├── .local                  # Scripts and programs installed w/o package manager
├── .hushlogin              # Hide "last login" message in terminal
├── .xprofile               # ~/.config/x11/xprofile
└── .zprofile               # ~/.config/shell/profile
```

```
.
├── ...
├── compfy                  # Compositor, adds transparency + animations to dwm
│   └── compfy.conf         # Compfy configuration
├── flameshot               # Screenshot tool
│   └── flameshot.ini       # Flameshot configuration
├── nvim                    # Terminal-based text editor
│   ├── plugged             # Plugins
│   └── init.vim            # Neovim configuration
├── shell                   # Environmental variables and aliases
│   ├── aliasrc             # Script, runs on shell launch; aliases for common commands
│   ├── bm-dirs             # Directory bookmarks
│   ├── bm-files            # File bookmarks
│   ├── profile             # Script, runs after login; sets environmental vars
│   └── shortcutrc          # Script, runs on shell launch; aliases for various directories
├── x11                     # X configuration
│   ├── xinitrc             # Script, runs when startx is run; sets resolution and starts dwm
│   ├── xprofile            # Script, runs after login; autostarts programs
│   └── xresources          # X configuration
└── zsh                     # Unix shell
│   └── .zshrc              # Zsh configuration
└── ...
```

```
.
├── ...
├── .local                  
│   ├── bin                 # Scripts
│   ├── share               # Only contains wallpaper as of now
│   └── src                 # suckless programs (dwm, st, dmenu)
└── ...
```
