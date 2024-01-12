#!/bin/bash

set -eox pipefail

# required plugins
plugins=(
  	"zsh-history-substring-search"
  	"zsh-syntax-highlighting"
	"zsh-autosuggestions"
	"vi-mode"
)

plugs_dir=/usr/share/zsh/plugins

for plugin in "${plugins[@]}";  do
	if [ ${plugins[@]} -eq "vi-mode" ]; then
		(cd "$plugs_dir" && git clone "https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode")
  	(cd "$plugs_dir" && git clone "https://github.com/zsh-users/$plugin.git")
done
