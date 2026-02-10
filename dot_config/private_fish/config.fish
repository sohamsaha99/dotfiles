if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set default editor
if type -q nvim
    set -gx EDITOR nvim
else if type -q vim
    set -gx EDITOR vim
else
    set -gx EDITOR nano
end

# Set up fzf key bindings
fzf --fish | source
# zoxide - fuzzy alternative of cd
zoxide init fish | source
