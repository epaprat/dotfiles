export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export TERM="xterm-256color"
PS1='\[\e[0;33m\][\t]\a \[\e[0;36m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[0;34m\]\W\[\e[0m\]\$ '

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -A'
alias l='ls -CF'
alias mongod='mongod --dbpath ~/Projects/mongodb/data/db/'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -r /sw/bin/init.sh && . /sw/bin/init.sh
