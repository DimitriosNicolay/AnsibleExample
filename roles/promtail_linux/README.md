# Promtail Log Collection Role

Installs and configures Promtail for log collection and forwarding to Loki.

## Requirements

- Ubuntu 20.04/22.04 or Windows Server 2019/2022
- Docker for Linux version
- Network access to Loki

## Role Variables

Define in your inventory:
```yaml
loki_url: "http://loki:3100"  # Loki server URL
```

## Dependencies

- docker role (for Linux)
- grafana_stack role (optional)

## Example Playbook

```yaml
- hosts: all
  roles:
    - { role: promtail_linux, when: ansible_system == 'Linux' }
    - { role: promtail_windows, when: ansible_system == 'Windows' }
```

## License

MIT

## Author Information

Created by Dimitrios Nicolay
