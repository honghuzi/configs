# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/cyb/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="kphoen"
# ZSH_THEME="fishy"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z d archlinux)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="emacs ~/.zshrc &"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rj='echo "1" | sudo -S mysoft/rj/rjsupplicant.sh &'
alias xx='mysoft/XX-Net-3.6.15/start &'
alias julia2='/home/cyb/mysoft/julia-night/bin/julia -O3 --depwarn=no  --check-bounds=no'
alias julia='/home/cyb/mysoft/julia/bin/julia -O3 --depwarn=no  --check-bounds=no'
alias juliap='/home/cyb/mysoft/JuliaPro-0.6.2.1/Julia/bin/julia -O3 --depwarn=no  --check-bounds=no'
alias ssio='expect ~/文档/mytools/ssh_io.sh'
alias ssla='expect ~/文档/mytools/ssh_la.sh'
alias sfio='expect ~/文档/mytools/sf_io.sh'
alias sfla='expect ~/文档/mytools/sf_la.sh'
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
# export PATH=$PATH:/opt/intel/bin:~/mysoft/julia/bin:/home/cyb/mysoft/anaconda3/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/lib:/opt/intel/lib/intel64:/opt/intel/composerxe/linux/mpi/lib64
export LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/intel/lib:/opt/intel/lib/intel64:/opt/intel/composerxe/linux/mpi/lib64
# export PATH=$PATH:/opt/intel/bin:~/mysoft/JuliaPro-0.6.0.1/Julia/bin:/home/cyb/mysoft/anaconda3/bin
export PATH=$PATH:/opt/intel/bin:/home/cyb/mysoft/anaconda3/bin:~/mysoft/julia/bin:/home/cyb/mysoft/matlab/bin
export VISUAL="emacs"
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS="@im=fcitx"
