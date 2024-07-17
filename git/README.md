# Git Worktrees

## Commands

```bash
git worktree list
```

## Notes

Works best if you clone a bare repo

When you clone you have the main worktree

Worktrees allow you to have branches in directories in the main repo making it easier to manage changes and state

# Git Log

## Commands

```bash
git log
```

Let's you see a log of commit history

```bash
git log -S <your_query_here>
```

Let's you see a log of commit history that contains your query in the diff

```bash
git log -S <your_query_here> --oneline
```

Let's you see a log of commit history that contains your query in a simplified view

