# Update Docker Config Script

This script changes the key `credsStore` to `credStore` in the `~/.docker/config.json` file.

## Prerequisites

### jq

This script requires `jq` to be installed. `jq` is a lightweight and flexible command-line JSON processor.

#### macOS

`jq` is not installed by default on macOS. You can install it using Homebrew:

```bash
brew install jq
```

#### Linux

`jq` is not installed by default on most Linux distributions, but it is available in the package repositories.

For Debian-based systems (like Ubuntu):
```bash
sudo apt-get install jq
```

For Red-Hat-based systems (like CentOS):
```bash
sudo yum install jq
```

For other distributions, use the package manager to install `jq`.

#### Windows

`jq` is not installed by default on Windows. You can download the `jq` executable from the [official jq website](https://jqlang.github.io/jq/download/).

Alternatively, if using a package manager like chocolatey, you can install it using:

```powershell
choco install jq
```

## Usage

1. Make the script executable:
```bash
chmod +x update_docker_config.sh
```

2. Run the script:
```bash
./update_docker_config.sh
```
