# Dotfiles

I love my dotfiles meow

## Requirements

The following are necessary for installation.  

### Git

```
brew install git
```

### GNU Stow

```
brew install stow
```

## Installation

Clone repo using git within your $HOME directory

```
$ git clone ...
$ cd dotfiles
```

Use GNU Stow to symlink the files to the $HOME directory 

```
$ stow . 
```
