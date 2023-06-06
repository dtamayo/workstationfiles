# Goes in ~/.oh-my-zsh/custom/
# Totally ripped off Junkfood/Dallas theme

# Grab the current date (%W) and time (%t):
TAMAYO_TIME_="%{$fg_bold[red]%}#[%*]%{$reset_color%}"

# Grab the current machine name 
TAMAYO_MACHINE_="%{$fg_bold[blue]%}%m%{$reset_color%}):%{$reset_color%}"

# Grab the current username 
TAMAYO_CURRENT_USER_="(%{$fg_bold[green]%}%n%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
TAMAYO_LOCA_="%{$fg[cyan]%}%~\$(git_prompt_info)%{$reset_color%}"

# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}@%{$fg_bold[green]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"

# Put it all together!
PROMPT="$TAMAYO_TIME_$TAMAYO_CURRENT_USER_@$TAMAYO_MACHINE_$TAMAYO_LOCA_
   "
