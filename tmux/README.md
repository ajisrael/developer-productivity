# TMUX

## Summary

tmux is a terminal multiplexer that allows you to maintain mulitple views, organize, and quickly navigate your various terminal sessions.

## Install

Mac

```bash
brew install tmux
```

## Commands

### Start

```bash
tmux
```

Creates a new tmux server (if there isn't one running) and a single session, window, and pane on that server
You cannot create a new server inside of an existing server, aka you can't do `tmux` and then `tmux` when in an attached session.

### Exit
```bash
C-d
```

`C-d` writes an EOF to stdin, which closes the shell

Note: If you have multiple windows open in a session, you will be navigated back to your previous window instead of detaching from the session.

### List Sessions

```bash
tmux list-sessions
```

Lists out sessions running on server if server is running

### Kill Server

```bash
tmux kill-server
```

Removes all sessions, windows, panes, and shuts down the tmux server

### Attach

```bash
tmux a
// or
tmux attach 
```

Attaches to a running server/session

### Detatch

```bash
<prefix>-d
```

or

```bash
tmux detatch
```

Detatches from current session

### Create Session

#### New Session

```bash
tmux new-session
```

This will error when executed inside an attached session

#### New Detatched Session

```bash
tmux new-session -d
```

Creates a new detatched session

#### New Detached Session with Name

```bash
tmux new-session -d -s "foo"
```

Creates a new detatched session with the name `foo`

#### New Detatched Session with Name and Window Name

```bash
tmux new-session -d -s "foo" -n "bar"
```

Creates a new detatched session with the name `foo`, and with the first window named `bar`

#### New Detatched Session with Name at Directory

```bash
tmux new-session -d -s "foo" -c "$HOME/personal/"
```

Creates a new detatched session with the name `foo`, with the current directory set to the path at `-c`

### Create Window

#### New Window

```bash
tmux new-window
```

```bash
<prefix>-c
```

Creates a new window inside the current session

#### New Window with Name

```bash
tmux new-window -n "bar"
```

Creates a new window inside the current session with the name `bar`

#### New Window with Name at Directory

```bash
tmux new-window -n "foo" -c "$HOME/personal/"
```

Creates a new window with the name `foo`, with the current directory set to the path at `-c`

#### New Window and Run Command

You can also append a command like `python` to run an executable when creating a new window

```bash
tmux new-window -n "foobar" [some command goes here]
```

### Create Pane

```bash
<prefix>-%
```

Vertically splits the current pane into two panes.

Note: You can exit the current pane with `C-d` and you will fall back to the previous pane.

### Navigation Tips

#### Sessions

Next and previous sessions:

```bash
<prefix>-( # next session
<prefix>-) # previous session
```

View all sessions and their windows:

```bash
<prefix>-w
```

Go back to previous session:

```bash
<prefix>-L
```

#### Windows

Next and previous windows:

```bash
<prefix>-n # next window
<prefix>-p # previous window
```

Specific window:

```bash
<prefix>-1 # switch to window number 1 in current session
```

#### Switch Client

The switch client command allows you to switch to another `session:window:pane#` by name

```bash
tmux switch-client -t "foo"
```

Switches the session to the one named `foo`


```bash
tmux switch-client -t "foo:bar"
```

Switches the session to the one named `foo` and window named `bar`

```bash
tmux switch-client -t "foo:bar:1"
```

Switches the session to the one named `foo`, window named `bar`, and pane number 1

## Terminology

### Prefix Key

`C-b` by default.

Put's the server into command mode and listens for the next command rather than propogating through the session, window, and pane.

## Usage Tips

### Sessions

A session should contain like items. I.e, if you are doing something that requires more than one window but it is for the same project,
they should be in the same session.

Sessions cannot have the same name (functions like a map, must be unique).

### Accessing scripts and functionality

Save new keybinding for executing script easily

```bash
bindkey -s ^f "tmux-sessionizer\n"
```

Maps `C-f` to run the script

# FZF

## Install

Mac

```bash
brew install fzf
```

