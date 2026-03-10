if [[ "$CPUTYPE" == *x86_64* ]]; then
  eval "$(/usr/local/bin/brew shellenv)" # for arm
elif [[ "$CPUTYPE" == *arm64* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)" # for arm
else
  echo "Unsupported CPU type: $CPUTYPE"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init --path)"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
