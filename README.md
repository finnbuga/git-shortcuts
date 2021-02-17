# git-shortcuts
git shortcuts for zsh

## Getting Started
Import this file into `~/.zshrc`:
```
# ~/.zshrc

source ~/.gitrc
```

You'll then get access to the commands bellow.

*Note: Some of these are specific to the project I'm working on, like the `feature/APL-` branch prefix. Feel free to adapt it to your own needs.*

## Commands

#### `c [<branch>]`
checks out `<branch>`:

```
$ c existing_branch
```
check out `existing_branch`

```
$ c
```
check out the `develop` branch and perform `git pull`

```
$ c hotfix/10.2.1
```
if branch doesn't exist, create it and check it out

```
$ c 324
```
if branch does not exist and starts with a number (like Jira tickets)
then create branch `feature/APL-324` and check it out
  
#### `co [<message>]`
```
$ co "add newFile.js"
```
commit the files in stating

```
$ co "commiting all changes"
```
if no files in staging, add all automatically, then commit

```
$ co
```
if no message provided, then amend the previous commit and keep the same message

#### `p`
```
$ p
```
git push. If it doesn't track a remote branch then set one up.

#### `d [<branch>]`
```
$ d branch
```
delete branch

```
$ d
```
delete current branch and check out the `develop` branch.

#### `b`
```
$ b
```
show branches

#### `l, lll`
```
$ l
```
one line log with pretty formatting

```
$ lll
```
detailed log

#### `s`
```
$ s
```
git status

#### `rrr`
```
$ rrr
```
git reset --hard HEAD

