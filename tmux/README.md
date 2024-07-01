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

```bash
tmux new-session -d
```

Creates a new detatched session

You can also do:

```bash
tmux new-session
```

But this will error when executed inside an attached session

### Navigation Tips

Next and previous sessions:

```bash
<prefix>-( # next session
<prefix>-) # previous session
```

View all sessions and their windows:

```bash
<prefix>-w
```

## Terminology

### Prefix Key

`C-b` by default.

Put's the server into command mode and listens for the next command rather than propogating through the session, window, and pane.
