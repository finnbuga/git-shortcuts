# git-shortcuts
git shortcuts for zsh

## Getting Started
Copy the content of `gitrc` into your `~/.zshrc`. You'll then get access to the commands bellow.

*Note: Some of these are specific to the project I'm working on, like the `SB1-` branch suffix. Feel free to adapt it to your own needs.*

## Commands

#### `c [<branch>]`
checks out `<branch>`. If if does't exist, then it creates one with the following name: `SB1-<new_branch_name>`.
If no `<branch>` is provided, then it defaults to checking out the `develop` branch and performing a `git pull`.
  
#### `co [<message>]`
commits the files in stating. If there are no files in staging, then it commits all the files.
If no `<message>` is provided, then it amends the previous commit and keeps the same message.

#### `p`
`git push`. If it doesn't track a remote branch then it sets up one.

#### `d [<branch>]`
deletes `<branch>`. If no parameter given, it defaults to deleting the current branch and checking out the `develop` branch.

#### `b`
`git branch`

#### `l, lll`
git log with pretty formatting. `l` is the short version, `lll` is the long one.

#### `s`
`git staus`



