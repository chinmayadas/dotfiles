# set variables
set -g -x EDITOR vim

set -gx PATH /usr/local/bin $PATH

set -gx CODE ~/git_repos

set -gx svnlive $CODE/its/live
set -gx svntest $CODE/its/test
set -gx svndev $CODE/its/dev

