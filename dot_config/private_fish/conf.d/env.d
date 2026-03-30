# Default Programs
set -gx EDITOR nvim
set -gx SUDO_EDITOR nano
set -gx BROWSER firefox

# Path
fish_add_path $HOME/Scripts

# Terminal Command
set -gx TERMINAL_COMMAND 'footclient -e /usr/bin/fish "$@"'

# If you still want to load those modular profile.d files:
if test -d $HOME/.config/profile.d
    for f in $HOME/.config/profile.d/*.sh
        # If they are bash scripts, they might error. 
        # If they are just simple alias files, 'source' usually works.
        source $f
    end
end
