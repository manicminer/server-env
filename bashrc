# Make bash behave like a login shell when using this rcfile
[[ -r /etc/profile ]] && source /etc/profile
[[ -r ~/.bash_profile ]] && source ~/.bash_profile
DIR=$(cd `dirname $0` && pwd)
source "${DIR}/env.sh"
unset DIR
