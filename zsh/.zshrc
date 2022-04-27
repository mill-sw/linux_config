########## DOWNLOAD PLUGINS: USE ONCE AND THEN COMMENT ALL ##########

## MANUAL
## zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## ANTIGEN
#antigen bundle zsh-users/zsh-history-substring-search
#antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle seebi/dircolors-solarized
#antigen bundle zsh-users/zsh-syntax-highlighting

############################# ANTIGEN #############################

#source /home/$USER/antigen.zsh

## Load the oh-my-zsh's library.
#antigen use oh-my-zsh

## Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle command-not-found

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell

# Tell Antigen that you're done.
#antigen apply

################################# ZSH #################################

# Path to oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="max"

plugins=(git zsh-autosuggestions sudo web-search copypath copyfile)

source $ZSH/oh-my-zsh.sh

alias zt="sudo gedit ~/.oh-my-zsh/themes/max.zsh-theme "

## UPDATE
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
# DISABLE_AUTO_UPDATE="true"

## COMPLETION
# ENABLE_CORRECTION="true"
# CASE_SENSITIVE="true"
# make _ and - same : CASE_SENSITIVE must be off
# HYPHEN_INSENSITIVE="true"

############################# ALIAS #############################

alias sz="source ~/.zshrc"
alias z="sudo gedit ~/.zshrc"

alias i="sudo apt install"
alias u="sudo apt update && sudo apt upgrade && sudo snap refresh"
alias a="sudo apt autoclean && sudo apt autoremove"
alias r="sudo dpkg -r"

alias n="nano"
alias g="gedit"
alias o="xdg-open ."

alias rb="sudo reboot now"
alias sd="sudo shutdown now"

## make
alias mcar="make clean all run"
alias mar="make all run"
alias mc="make clean"
alias ma="make all"
alias mr="make run"

############################## MVPC ##################################

alias sg0="cd ~/gap_sdk/configs && source gapoc_b_v2.sh && cd"
alias sg1="cd ~/gap_sdk_v4.9.0/configs && source gapoc_b_v2.sh && cd"
alias om="cd ~/occupancy_management/gap8_project_v2"

alias gv="platform=gvsoc"
alias gvr="platform=gvsoc runner_args=--vcd"

export GAPY_OPENOCD_CABLE=interface/jlink.cfg
export OPENOCD_CABLE=interface/jlink.cfg

alias gappi='ssh pi@192.168.0.$pi'

########################## DEFAULT ZSH ##############################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment if pasting URLs and other text is messed up
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment disables colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment disables auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time stamp shown in the history command output.
# You can set one of the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications, see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
