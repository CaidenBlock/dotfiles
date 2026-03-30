if status is-interactive
# Commands to run in interactive sessions can go here
end

# yazi -> y
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# greet
set -g fish_greeting 'fish'

fish_add_path "$HOME/.local/bin"

# bob -> nvim
fish_add_path "$HOME/.local/share/bob/nvim-bin"

# zoxide -> z,zi
zoxide init fish | source

alias v='nvim'

# paru notes
alias pnotes='grep -F (expac -Q "%n") ~/.config/paru/pkg_notes.conf'
