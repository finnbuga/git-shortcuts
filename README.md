# Git shortcuts

## Getting Started

Import `gitrc.sh` file into `~/.zshrc`:

```
# ~/.zshrc

source ~/gitrc.sh
```

You'll then get access to the commands bellow.

## Commands

### `s`

```
# show status
s
```

### `l, lll`

```
# show one line log with pretty formatting
l

# show detailed log
lll
```

### `b`

```
# show branches
b
```

### `d [<branch>]`

```
# delete <branch>
d <branch>

# delete current branch and check out `master`
d
```

### `c [<branch>]`

```
# check out <branch> if it exists, otherwise create new branch and check it out
c <branch>

# check out `master`
c
```

### `cc <remote_branch>`

```
# check out <remote_branch>
cc <remote_branch>
```

### `cm [<message>]`

```
# commit the files in stating. If no files in stating then commit all changes in the working directory
cm "<commit_message>"

# If no message provided, then amend the previous commit and keep the same message
cm
```

### `p`

```
# git force push. If it doesn't track a remote branch then set one up automatically.
p
```

### `rrr`

```
# git reset --hard HEAD
rrr
```
