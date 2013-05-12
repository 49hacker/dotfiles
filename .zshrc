alias ls="ls -v -G"
alias la="ls -a"
alias ll="ls -l -a"
alias ff="find . -type f -print | xargs grep -n"

export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxcxdxbxegedabagacad

export PATH=/opt/local/bin:/Applications/XAMPP/xamppfiles/bin:/usr/local/bin:/Users/nishihara/android-sdks/platform-tools:$PATH

export NODE_PATH=~/.npm/libraries:$NODE_PATH
export PATH=~/.npm/bin:$PATH
export MANPATH=~/.npm/man:$MANPATH

setopt share_history
PROMPT="%%"
RPROMPT="[%~]"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log --oneline"


# compile

export CC='cc'
export CFLAGS='-fast -m64'
export CXX='cc'
export CXXFLAGS='-fast -m64'
export CPPFLAGS="-I/usr/local/include -I/usr/local/ssl/include/openssl"
export LD_LIBRARY_PATH='/usr/local/lib'
export LDFLAGS="-L/usr/local/lib -L/usr/lib"

# rds

export JAVA_HOME=/Library/Java/Home
export AWS_RDS_HOME=$HOME/aws/RDSCli-1.12.002
export PATH=$AWS_RDS_HOME/bin:$PATH
export EC2_CERT=$HOME/aws/cert-2CLOYJM3UNCB52P7RPJKM3NSSBZ7KERP.pem
export EC2_PRIVATE_KEY=$HOME/aws/pk-2CLOYJM3UNCB52P7RPJKM3NSSBZ7KERP.pem
export EC2_URL=https://ec2.ap-northeast-1.amazonaws.com
export EC2_REGION=ap-northeast-1

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ `ps -ef | grep ssh-agent | grep 1250890098 | grep -v grep | wc -l` = 0 ]; then
  if [ `hostname` = miyashitaa-p608.camobile.com ]; then
    if [ ! -z $STY ]; then
     ssh-agent -s | head -2 > /Users/nishihara/.ssh/ssh-agent
     eval `cat /Users/nishihara/.ssh/ssh-agent`
     ssh-add
    fi
  fi
fi
eval `cat /Users/nishihara/.ssh/ssh-agent`
eval "$(rbenv init -)"
