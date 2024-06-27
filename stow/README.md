# Stow

## Summary
Stow is a symlink manager that synergizes well with dotfiles for environment setup

## Docs

You can find the docs [here](https://www.gnu.org/software/stow/manual/stow.html)
or just by running the following command:

```bash
man stow
```

## Function

At it's core, stow creates symlinks in the following structure:
```
-> dirA (target directory)
|
|--> dirB (stow directory) // the one you're currently in
   |
   |--> dirC 
   |  |
   |  |--> file1
   |
   |--> dirD
      |
      |--> file2
```

When executing `stow dirC` from inside `dirB` a symlink will be created at the lowest possible level in `dirA`

This allows you to create something like a `.dotfiles` directory as your "stow directory" inside your `$HOME` directory
and then symlink all your configs inside of `.dotfiles` into `$HOME`
