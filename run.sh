#!/bin/bash

set_cwd() {
  cd "$WERCKER_ROOT"
}

check-params() {
  if [ ! -n "$WERCKER_NPM_RUN_SCRIPT" ]; then
    fail 'Please provide a script to run'
  fi
}

main() {
  check-params

  set_cwd

  info "npm run $WERCKER_NPM_RUN_SCRIPT"

  npm run "$WERCKER_NPM_RUN_SCRIPT"

  success 'Step completed'
}

main
