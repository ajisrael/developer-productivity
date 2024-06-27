# Ansible

## Summary
This is used for automation and setup of development environment

## Commands

### Buld docker images:

Blank computer
```bash
docker build . -t new-computer
```

When you run this command:
- Docker builds an image based on the `Dockerfile` (by default) and tags it with the name `new-computer`.

Nvim computer
```bash
docker build . -f nvim.Dockerfile -t nvim-computer
```

When you run this command:
- Docker builds an image based on the `nvim.Dockerfile` and tags it with the name `nvim-computer`.

#### Note

Both commands can be run at the same time by executing the `build-dockers` script in this directory.

```bash
./build-dockers
```

### Start docker container for testing:

```bash
docker run --rm -it new-computer bash
```

or

```bash
docker run --rm -it nvim-computer bash
```

When you run this command:
- Docker will start a new container from the nvim-computer image.
- The --rm option ensures that the container is automatically removed after you exit the Bash shell.
- The -it options provide an interactive terminal session, so you can interact with the container using Bash.
- You will be dropped into a Bash shell inside the running container, where you can run commands as if you were on a normal Linux system.

### Run Ansible Playbook

This will run the playbook specified in the file `fem.yml`

```bash
ansible-playbook fem.yml
```

This will run a playbook and only execute a group of tasks with the same tag (`node` in this example).

```bash
ansible-playbook -t node fem.yml
```

