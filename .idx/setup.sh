#!/bin/bash

if [ -f "${HOME}/.setup-done" ]; then
  exit 0
fi

CONFIGS_BASE_URL='https://raw.githubusercontent.com/akiraohgaki/configs/main'
ENV_FILE="${HOME}/.localenv"

touch "${ENV_FILE}"

ssh-keygen -t ed25519 -N '' -f "${HOME}/.ssh/id_ed25519"
ssh-keygen -t rsa -N '' -f "${HOME}/.ssh/id_rsa"
curl -fsSL -o "${HOME}/.ssh/config" "${CONFIGS_BASE_URL}/ssh/config"

curl -fsSL -o "${HOME}/.gitconfig" "${CONFIGS_BASE_URL}/git/.gitconfig"
curl -fsSL -o "${HOME}/.gitignore" "${CONFIGS_BASE_URL}/git/.gitignore"

curl -fsSL -o "${HOME}/.editorconfig" "${CONFIGS_BASE_URL}/editorconfig/.editorconfig"

curl -fsSL -o "${HOME}/.codeoss-cloudworkstations/data/Machine/settings.json" --create-dirs "${CONFIGS_BASE_URL}/vscode/settings.json"

echo $'\n'"source ${ENV_FILE}" >>"${HOME}/.bashrc"

touch "${HOME}/.setup-done"
