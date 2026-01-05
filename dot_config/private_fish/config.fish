# NVM setup
set -x NVM_DIR $HOME/.nvm
# if test -s $NVM_DIR/nvm.sh
#   bass source $NVM_DIR/nvm.sh
# end

# Add Neovim to PATH
set -x PATH $PATH /opt/nvim-linux-x86_64/bin

# Add TeX Live to PATH
set -x PATH /usr/local/texlive/2024/bin/x86_64-linux $PATH

if status is-interactive
  # Commands to run in interactive sessions can go here
  starship init fish | source
end
