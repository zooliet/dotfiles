. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
[[ -d $PYENV_ROOT/bin ]] && eval "$(pyenv init -)"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# eval "$($HOME/.rbenv/bin/rbenv init - zsh)"
[[ -d ~/.rbenv/bin ]] && eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"
