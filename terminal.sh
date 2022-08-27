#!/usr/bin/env bash

if [ -z "${MT_VERSION}" ]; then
  echo "Missing MetaTrader version"
  exit 1
fi

if [ -z "${MT_INSTALLATION}" ]; then
  echo "Missing MetaTrader installation"
  exit 1
fi

if [ "${MT_VERSION}" == "4" ]; then
  exec wine "${MT_INSTALLATION}terminal.exe" "$@"
elif [ "${MT_VERSION}" == "5" ]; then
  exec wine "${MT_INSTALLATION}terminal64.exe" "$@"
else
  echo "Unsupported MetaTrader version!"
  exit 1
fi