#!/bin/bash

function variable_exists {
  return `! test -z "$1"`
}

function file_contains {
  return `grep -s -q "$2" "$1"`
}

function git_clone_repo {
  local url="$1"
  local options="${2:-}"
  if ! variable_exists "$url"; then
    echo "${FUNCNAME[0]}: no repo url given"
    return
  fi
  local name=$(echo "$url" | rev | cut -d/ -f1 | rev | cut -d. -f1)
  echo "${FUNCNAME[0]}: cloning $url"
  rm -rf "$name" && git clone $options $url
}

function git_clone_private_repo {
  local name="$1"
  git_clone_repo git@github-Stivius:Stivius/$name.git
}

function create_symlink {
  local file="$1"
  local source_dir="$2"
  local target_dir="$3"
  local sudo="${4:-}"

  echo "${FUNCNAME[0]}: $file"
  $sudo rm -rf "$target_dir/$file" && $sudo ln -s "$source_dir/$file" "$target_dir/$file"
}

function symlink_config {
  local file="$1"

  create_symlink $file "$DOTFILES/.config" "$HOME/.config"
}

function symlink_bin {
  local file="$1"
  local source_dir="$2"

  create_symlink $file $source_dir "$HOME/.local/bin"
}

function symlink_bin_helper {
  local file="$1"
  local source_dir="$2"

  create_symlink $file "$SCRIPTS/helpers" "$HOME/.local/bin/helpers"
}

function install_deb_package {
  local url="$1"
  if ! variable_exists "$url"; then
    echo "${FUNCNAME[0]}: no url given"
    return
  fi
  local name=$(echo "$url" | rev | cut -d/ -f1 | rev)
  echo "${FUNCNAME[0]}: $name"
  wget "$url"
  sudo apt install -y "./$name"
  rm -f "./$name"
}
