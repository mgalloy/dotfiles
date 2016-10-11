#!/bin/sh

git config --global user.name "Michael Galloy"
git config --global user.email mgalloy@gmail.com
git config --global user.signingkey A60F2AA0

git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor "emacs -nw"
git config --global core.autocrlf input
git config --global core.attributesfile ~/.gitattributes

git config --global difftool.sourcetree.cmd "opendiff \"\$LOCAL\" \"\$REMOTE\""
git config --global diff.nb2md.textconv nb2md
git config --global mergetool.sourcetree.cmd "/Applications/SourceTree.app/Contents/Resources/opendiff-w.sh \"\$LOCAL\" \"\$REMOTE\" -ancestor \"\$BASE\" -merge \"\$MERGED\""
git config --global mergetool.sourcetree.trustExitCode true

git config --global color.ui true

git config --global push.default matching

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.stat status

# gpg 1.4.20 works, but newer versions seem broken
#git config --global commit.gpgsign true
