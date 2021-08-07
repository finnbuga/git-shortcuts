# git-shortcuts
git shortcuts for zsh

## Getting Started
Import this file into `~/.zshrc`:
```
# ~/.zshrc

source ~/.gitrc.sh
```

You'll then get access to the commands bellow.

## Commands

#### `s`
```
$ s
```
git status

#### `l, lll`
```
$ l
```
one line log with pretty formatting

```
$ lll
```
detailed log

#### `b`
```
$ b
```
show branches

#### `d [<branch>]`
```
$ d
```
delete current branch and check out `master`.

```
$ d branch
```
delete branch

#### `c [<branch>]`
checks out `<branch>`:

```
$ c existing_branch
```
check out `existing_branch`

```
$ c
```
check out `master`

```
$ c new_branch
```
if branch doesn't exist, create it and check it out
  
#### `cm [<message>]`
```
$ cm "add newFile.js"
```
commit the files in stating

```
$ cm "commiting all changes"
```
if no files in staging, add all automatically, then commit

```
$ cm
```
if no message provided, then amend the previous commit and keep the same message

#### `p`
```
$ p
```
git force push. If it doesn't track a remote branch then set one up automatically.

#### `rrr`
```
$ rrr
```
git reset --hard HEAD

