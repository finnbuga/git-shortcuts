# For colours and formatting check: https://misc.flogisoft.com/bash/tip_colors_and_formatting

############################
#   Helpers
############################

function has_remote() {
	git ls-remote --exit-code --heads origin $(git branch --show-current) &>/dev/null
	return $?
}

function has_files_in_stating() {
	git diff --cached --quiet
	return $?
}

function is_existing_branch() {
	git rev-parse --verify "$1" &>/dev/null	
	return $?
}


############################
#   c [<branch>]
#   ------------
#   Checks out `<branch>`.
#   If if does't exist, then it creates a new one.
#   If no `<branch>` is provided, then it defaults to checking out `master` and performing a `git pull`.
############################

function c() {
	if [ $# -eq 0 ]; 
	then
		git checkout master # && git pull -p --ff-only
		
	elif is_existing_branch "$1"; 
	then
		git checkout "$1"
		
	else
		git checkout -b "$1"
	fi
}

# Autocomplete branch name for command `c`
complete -C "git branch --no-color" c


############################
#   cm [<message>]
#   --------------
#   Commits the files in stating. If there are no files in staging, then it commits all the files.
#   If no `<message>` is provided, then it amends the previous commit and keeps the same message.
############################

function cm() {
	if has_files_in_stating; then
		git add -A
	fi
		
	if [ $# -eq 0 ]; then
		git commit --amend --no-edit
	else
		git commit -m $1
	fi
}


############################
#   re
#   --
#   Rebases the current branch onto `master`, after having pulled `origin/master`
############################

function re() {
	git fetch origin master:master
	git rebase master
}


############################
#   p
#   -
#   `git push`. If it doesn't track a remote branch then it sets one up.
############################

function p() {
	if has_remote; then
		git push --no-verify -f
	else
		git push --no-verify --set-upstream origin $(git branch --show-current)
	fi
}


############################
#   b
#   -
#   `git branch`
############################

branches_ASCII_art='  /|\\'
alias b='echo $branches_ASCII_art && git branch --color | cat'


############################
#   d [<branch>]
#   ------------
#   deletes `<branch>`. If no parameter given, it defaults to 
#   deleting the current branch and checking out `master`.
############################

function d() {
	if [ $# -eq 0 ]; then
		local branch=$(git branch --show-current)
		git checkout master &>/dev/null
	else
		local branch=$1		
	fi
	
	local hash=$(git rev-parse --short $branch)
	
	git branch -D "$branch" &>/dev/null
	
	if [ $? -ne 0 ]; then
		return 0    
  fi
    
  b
	echo "\e[0m  \e[91;9m$branch ($hash)\e[0m"
}

# Autocomplete branch name for command `d`
complete -C "git branch --no-color" d

############################
#   l, lll
#   ------
#   git log with pretty formatting. `l` is the short version, `lll` is the long one.
############################

local format="%C(yellow)%h %C(blue)%aN %C(green)(%cr) %C(white)%s%C(yellow)%d%C(reset)"
alias l='git log --color --use-mailmap --pretty=format:"$format" -6 | cat'
alias lll='git log --color --use-mailmap --pretty=format:"$format" -4 --name-status | cat'


############################
#   s
#   -
#   `git staus`
############################

alias s='git status'


############################
#   rrr
#   -
#   `git reset --hard HEAD`
############################

alias rrr='git reset --hard HEAD'
