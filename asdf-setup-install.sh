#!/usr/bin/env bash

HAS_GIT=$(which git)
if [ "${HAS_GIT}x" == "x" ]; then
  echo ""
  echo "Error: This script requires git to work properly"
  echo "Error: git not installed or not in path"
  echo ""
  exit 1
fi

# git clone https://github.com/asdf-vm/asdf.git ${HOME}/.asdf --branch v0.14.0

asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang 1.22.0
asdf global golang 1.22.0

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.3.0
asdf global ruby 3.3.0

asdf plugin-add nomad https://github.com/asdf-community/asdf-hashicorp.git
asdf install terraform 1.5.7
asdf global terraform 1.5.7

asdf install consul 1.17.3
asdf global consul 1.17.3

asdf install nomad 1.7.5
asdf global nomad 1.7.5

asdf plugin add flutter https://github.com/ken-ty/asdf-flutter
asdf install flutter 3.19.1-stable
asdf global flutter 3.19.1-stable

# asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# asdf install nodejs XXX
# asdf global nodejs XXX


echo "Add the following to ~/.bash_profile"
echo ""
cat <<-EOF
if [ -f "${HOME}/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
fi

if [ -f "${HOME}/.asdf/completions/asdf.bash" ]; then
. "$HOME/.asdf/completions/asdf.bash"
fi

export FLUTTER_ROOT="$(asdf where flutter)"

EOF
echo ""
