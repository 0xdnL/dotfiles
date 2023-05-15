
[ -r "/usr/local/etc/profile.d/bash_completion.sh" ] && . "/usr/local/etc/profile.d/bash_completion.sh"
[ -f "$HOME/.fzf.bash" ] 			&& . "$HOME/.fzf.bash"
[ -f "$HOME/.bash_aliases" ] 	&& . "$HOME/.bash_aliases"
[ -f "$HOME/.bash_func" ] 		&& . "$HOME/.bash_func"


shopt -s histappend							# close a session history will appended rather than overwritten
shopt -s cmdhist								# force commands entered on more than one line to be adjusted to fit on only one for parsing
export HISTSIZE=100000000
export HISTFILESIZE=100000000
export HISTIGNORE='ls:ll:ls -alh:pwd:clear:history'
export HISTCONTROL='ignoredups'

export PS2='> ' # used in multiline commands
export PS4='+ ${BASH_SOURCE##*/}.${LINENO} ${FUNCNAME}: '

# PROMPT_COMMAND='history -a; history -c; history -r; __git_ps1 "\A \u@\h:\w" "\\\$ "'
# export PROMPT_COMMAND="history -a; history -n;"
# export PS1='\A \w$(__aws_ps1)$(__kubectl_ps1)$(set -x;__git_ps1;set +x;) \$ '

# git prompt see: $(brew --prefix)/etc/bash_completion.d/git
export GIT_PS1_SHOWDIRTYSTATE=true      # staged '+', unstaged '*'
export GIT_PS1_SHOWUNTRACKEDFILES=true  # '%' untracked files
export GIT_PS1_SHOWUPSTREAM="auto"      # '<' behind, '>' ahead, '<>' diverged, '=' no difference
export GIT_PS1_SHOWSTASHSTATE=true      # '$' something is stashed
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_CONFIG="$HOME/.gitconfig"

export PS1_MIN=  # set to 1 => $
export PROMPT_DIRTRIM=2
export PROMPT_COMMAND='__prompt_command'


export GOPATH="$HOME/go"									# golang
export PATH=$GOPATH/bin:$PATH							# golang

export PATH="/usr/local/sbin:$PATH"				# homebrew
export PATH="$HOME/.cargo/bin:$PATH"			# rust
export PATH="$HOME/.krew/bin:$PATH" 			# package manager for kubectl plugins
export PATH="$PATH:$HOME/.local/bin"			# python: pipx

export MINIKUBE_IN_STYLE=false	# disable color and emojis

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && . "$HOME/.sdkman/bin/sdkman-init.sh"


complete -C '/usr/local/bin/terraform' terraform
complete -C '/usr/local/bin/aws_completer' aws
complete -C '/usr/local/bin/kustomize' kustomize

eval "$(register-python-argcomplete pipx)"						# pipx bash-complete

eval "$(rbenv init -)"			# ruby environment / version manager

[ -f "/usr/local/etc/profile.d/z.sh" ] && . /usr/local/etc/profile.d/z.sh   # change into recently used dir

export NVM_DIR="/Users/daniel/.nvm"
[ -s "/Users/daniel/.nvm/nvm.sh" ] && \. "/Users/daniel/.nvm/nvm.sh"                      # loads nvm
[ -s "/Users/daniel/.nvm/bash_completion" ] && \. "/Users/daniel/.nvm/bash_completion"    # loads nvm bash_completion

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

export MANPAGER="vim -M +MANPAGER --not-a-term -"

#. <(eksctl completion bash)
export PATH="/usr/local/opt/curl/bin:$PATH"
