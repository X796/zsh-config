PROMPT='%F{#D2DE32}%m%f @ %F{#D2DE32}%c%f $(git_prompt_info)$(git_prompt_end)'
ZSH_THEME_GIT_PROMPT_PREFIX="git : %F{#D2DE32}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"

function git_prompt_end() {
    	if [ -n "$(git rev-parse --git-dir 2>/dev/null)" ]; then
        	echo -n " # "
    	else
        	echo -n "# "
    	fi
}
