#!/bin/bash

exec 1>log.out 2>&1

error() {
  local last_exit_status="$?"
  local parent_lineno="$1"
  local message="${2:-}"
  local code="${3:-$last_exit_status}"
  if [[ -n "$message" ]] ; then
    echo "Error near line ${parent_lineno}: ${message}; exiting with status ${code}"
  else
    echo "Error near line ${parent_lineno}; exiting with status ${code}"
  fi
  exit "${code}"
}
trap 'error ${LINENO}' ERR
shopt -s extdebug
set -ux
