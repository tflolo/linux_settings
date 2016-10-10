# Sexy Solarized Bash Prompt, inspired by "Extravagant Zsh Prompt"
# Customized for the Solarized color scheme by Sean O'Neil

if [[ $COLORTERM = gnome-* && $TERM = xterm ]]  && infocmp gnome-256color >/dev/null 2>&1; then TERM=gnome-256color; fi
if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      BASE03=$(tput setaf 234)
      BASE02=$(tput setaf 235)
      BASE01=$(tput setaf 240)
      BASE00=$(tput setaf 241)
      BASE0=$(tput setaf 244)
      BASE1=$(tput setaf 245)
      BASE2=$(tput setaf 254)
      BASE3=$(tput setaf 230)
      YELLOW=$(tput setaf 136)
      ORANGE=$(tput setaf 166)
      RED=$(tput setaf 160)
      MAGENTA=$(tput setaf 125)
      VIOLET=$(tput setaf 61)
      BLUE=$(tput setaf 33)
      CYAN=$(tput setaf 37)
      GREEN=$(tput setaf 64)
    else
      BASE03=$(tput setaf 8)
      BASE02=$(tput setaf 0)
      BASE01=$(tput setaf 10)
      BASE00=$(tput setaf 11)
      BASE0=$(tput setaf 12)
      BASE1=$(tput setaf 14)
      BASE2=$(tput setaf 7)
      BASE3=$(tput setaf 15)
      YELLOW=$(tput setaf 3)
      ORANGE=$(tput setaf 9)
      RED=$(tput setaf 1)
      MAGENTA=$(tput setaf 5)
      VIOLET=$(tput setaf 13)
      BLUE=$(tput setaf 4)
      CYAN=$(tput setaf 6)
      GREEN=$(tput setaf 2)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    # Linux console colors. I don't have the energy
    # to figure out the Solarized values
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

PS1="\[${BOLD}${CYAN}\]\u\[$BASE0\]@\[$CYAN\]\h \[$BASE0\]in \[$BLUE\]\w\[$BASE0\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$YELLOW\]\$(parse_git_branch)\[$BASE0\]\n\$ \[$RESET\]"

alias ptc='ssh ptc@ptc-dev'
alias breimsfjell2='ssh ptc@breimsfjell2-paneda.dyndns.org -p1022'
alias stavenes='ssh ptc@stavenes-paneda.dyndns.org -p1022'
alias knappe='ssh ptc@knappe-paneda.dyndns.org -p1022'
alias skui='ssh ptc@skuibrenna-paneda.dyndns.org -p1022'
alias askimporten='ssh ptc@askimporten-paneda.dyndns.org -p1022'
alias hagan='ssh ptc@hagan-paneda.dyndns.org -p1022'
alias eidsvoll='ssh ptc@eidsvoll-paneda.dyndns.org -p1022'
alias borlaug='ssh ptc@borlaug-paneda.dyndns.org -p1022'
alias eidet='ssh ptc@eidet-paneda.dyndns.org -p1022'
alias hvaler='ssh ptc@hvaler-paneda.dyndns.org -p1022'
alias grua='ssh ptc@grua-paneda.dyndns.org -p1022'
alias haukanes='ssh ptc@haukanes-paneda.dyndns.org -p1022'
alias ralingen='ssh ptc@ralingen-paneda.dyndns.org -p1022'
alias oslofjord='ssh ptc@oslofjord-paneda.dyndns.org -p1022'
alias krakmo='ssh ptc@krakmo-paneda.dyndns.org -p1022'
alias dev='cd ~/dev/git/ptc/'
alias curatoris='ssh thomas@192.168.72.94'
alias kvaser='ssh gitmaster@kvaser'
alias pi='ssh paneda@pi'
alias pbs2='ssh paneda@pbs2'
alias pbs1='ssh paneda@pbs1'
alias pbs1_install='ssh paneda@192.168.73.4'
alias pbs2_install='ssh paneda@192.168.73.5'
alias pvp1='ssh paneda@PVP-1'
alias pvp2='ssh paneda@PVP-2'
alias pvp3='ssh paneda@PVP-3'
alias pvp4='ssh paneda@PVP-4'
alias pvp5='ssh paneda@PVP-5'
alias pvp6='ssh paneda@PVP-6'
alias pas_install='ssh paneda@192.168.73.3'
alias ptc_install='ssh ptc@192.168.73.2'
alias l='ls -l'
alias ll='ls -la'
alias haukanes='ssh ptc@haukanes-paneda.dyndns.org -p1022'
alias repo='ssh repository@repo'
alias kjorbo='ssh ptc@kjorbo-paneda.dyndns.org -p1022'
alias opera='ssh ptc@opera-paneda.dyndns.org -p1022'
alias bekkestua='ssh ptc@bekkestua-paneda.dyndns.org -p1022'
alias ptc_dev='ssh ptc@192.168.75.124'
alias oksland='ssh ptc@oksland-paneda.dyndns.org -p1022'
alias brunsvik='ssh ptc@brunsvik-paneda.dyndns.org -p1022'
alias nordby='ssh ptc@norby-paneda.dyndns.org -p1022'
alias tasen='ssh ptc@tasen-paneda.dyndns.org -p1022'
alias tromsoysund='ssh ptc@tromsoysund-paneda.dyndns.org -p1022'
alias vadfoss='ssh ptc@vadfoss-paneda.dyndns.org -p1022'
alias haumyrheia='ssh ptc@haumyrheia-paneda.dyndns.org -p1022'
alias porsgrunn='ssh ptc@porsgrunn-paneda.dyndns.org -p1022'
alias sjoormporten='ssh ptc@sjoormporten-paneda.dyndns.org -p1022'
alias grimstadporten='ssh ptc@grimstadporten-paneda.dyndns.org -p1022'
alias lussanberget='ssh ptc@lussanberget-paneda.dyndns.org -p1022'
alias flekkeroy='ssh ptc@flekkeroy-paneda.dyndns.org -p1022'
alias ravnehei='ssh ptc@ravnehei-paneda.dyndns.org -p1022'
alias hundorp='ssh ptc@hundorp-paneda.dyndns.org -p1022'
alias bukkestein='ssh ptc@bukkestein-paneda.dyndns.org -p1022'
alias teistedal='ssh ptc@teistedal-paneda.dyndns.org -p1022'
alias blodeskjar='ssh ptc@blodeskjar-paneda.dyndns.org -p1022'


