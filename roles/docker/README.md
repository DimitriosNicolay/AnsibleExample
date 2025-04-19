# Docker Installation Role

This role installs and configures Docker CE on Ubuntu systems.

## Requirements

- Ubuntu 20.04 (Focal) or 22.04 (Jammy)
- Python 3.x
- Internet connectivity for package installation

## Role Variables

No variables required for basic installation. All configurations use default values.

## Dependencies

None. This role installs all necessary dependencies including:
- apt-transport-https
- ca-certificates
- curl
- software-properties-common
- python3-pip

## Example Playbook

```yaml
- hosts: linux_servers
  roles:
    - { role: docker, tags: ['docker'] }
```

## Role Actions

1. Installs prerequisite packages
2. Adds Docker GPG key and repository
3. Installs Docker CE and docker-compose-plugin
4. Installs Docker Python SDK
5. Ensures Docker service is running and enabled

## License

MIT

## Author Information

Created by Dimitrios Nicolay
