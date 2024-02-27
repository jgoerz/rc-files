#!/usr/bin/env bash

ln -s ${PWD}/tmux.conf ${HOME}/.tmux.conf
ln -s ${PWD}/bash/bash_aliases ${HOME}/.bash_aliases
ln -s ${PWD}/default-golang-pkgs ${HOME}/.default-golang-pkgs
ln -s ${PWD}/default-gems ${HOME}/.default-gems
ln -s ${PWD}/gitignore ${HOME}/.gitignore

echo ""
echo "Link the .bashrc manually"
echo ""
echo "ln -s ${PWD}/bash/bashrc ${HOME}/.bashrc"
echo ""
