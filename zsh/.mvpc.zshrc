################################################################################ ZSH

export python="python3"
# Path to oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="max"

plugins=(git zsh-autosuggestions sudo web-search copypath copyfile zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

## UPDATE
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
# DISABLE_AUTO_UPDATE="true"

## COMPLETION
ENABLE_CORRECTION="true"
# CASE_SENSITIVE="true"
# make _ and - same : CASE_SENSITIVE must be off
# HYPHEN_INSENSITIVE="true"

################################################################################ ALIAS
## custom alias
alias sz="source ~/.zshrc"
alias z="sudo nano ~/.zshrc"

alias i="sudo apt install"
alias u="sudo apt update && sudo apt upgrade"
alias a="sudo apt autoclean && sudo apt autoremove"
alias r="sudo dpkg -r"

alias rb="sudo reboot now"
alias sd="sudo shutdown now"

alias t="python3 main.py -l 0 -s 0 && python3 poster.py -l 0 -s 0 -d 1"


## custom command
sudo chmod 666 /dev/ttyS0
cd gappi && git reset --hard && git pull > ../log/git.log
sudo chmod u+r+x command.sh && ./command.sh && cd

################################################################################ ALIAS

## APT
alias i="sudo apt install"
alias iy="sudo apt install -y"

alias ua="sudo apt update && sudo apt upgrade && sudo apt autoclean && sudo apt autoremove"
alias u="sudo apt update && sudo apt upgrade"
alias uy="sudo apt update && sudo apt upgrade -y && sudo snap refresh"
alias ud="sudo apt dist-upgrade"
alias uf="sudo apt --fix-broken install"

alias a="sudo apt autoclean && sudo apt autoremove"
alias r="sudo dpkg -r"
alias re="sudo dpkg --configure -a"

## sys
alias sz="source ~/.zshrc"
alias z="sudo gedit ~/.zshrc"
alias zz="sudo gedit ~/.oh-my-zsh/themes/max.zsh-theme "

alias n="nano"
alias sn="sudo nano"
alias g="gedit"
alias sg="sudo gedit"

alias o="xdg-open ."
alias so="sudo xdg-open ."

alias rb="sudo reboot now"
alias sd="sudo shutdown now"

## make
alias mr="make run"
alias ma="make all"
alias mar="make all run"
alias mc="make clean"
alias mca="make clean all"
alias mcar="make clean all run"

## pip
alias p="pip3 install"

################################################################################ MVPC

alias sg0="cd ~/gap_sdk_v4.7.0/configs && source gapoc_b_v2.sh && cd ../occupancy_management/gap8_project_v2"
alias sg1="cd ~/gap_sdk_v4.9.0/configs && source gapoc_b_v2.sh && cd"

alias cal="cd ~/gap_sdk_v4.7.0/configs && source gapoc_b_v2.sh && cd ../occupancy_management/dataset_tools/gap8_capture_raw_images && make clean all run"
alias calcp="cp offset_img/Calibration.bin ../../gap8_project_v2/Calibration/"

alias ca_nn="conda activate nntool"

alias gv="platform=gvsoc"
alias gvr="platform=gvsoc runner_args=--vcd"
alias gvr="make all run platform=gvsoc runner_args='--trace=insn'"

#export GAPY_OPENOCD_CABLE=interface/ftdi/gapuino_ftdi.cfg
#export GAPY_OPENOCD_CABLE=interface/jlink.cfg
#export OPENOCD_CABLE=interface/jlink.cfg

alias gappi='ssh pi@192.168.0.$pi'

################################################################################ CONDA

# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/z/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/$USER/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/$USER/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/$USER/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

################################################################################ KUBERNETES

#autoload -Uz compinit
#compinit

source <(kubectl completion zsh)

################################################################################ ETC

eval "$(register-python-argcomplete my-awesome-script)"

################################################################################ DOWNLOAD ONCE

## ARGCOMPLETE
#pip3 install argcomplete
#activate-global-python-argcomplete
#autoload -U bashcompinit
#bashcompinit

## MANUAL
## zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

################################################################################ DEFAULT

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
