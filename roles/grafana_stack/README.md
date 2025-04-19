# Grafana Monitoring Stack

Deploys a complete monitoring stack using Docker Compose with:
- Grafana for visualization
- Prometheus for metrics collection
- Promtail for log aggregation

## Requirements

- Docker (use with docker role)
- Docker Compose plugin
- Network access to Docker Hub

## Role Variables

Variables defined in defaults/main.yml:
```yaml
grafana_admin_user: admin      # Default Grafana admin username
grafana_admin_password: admin  # Default Grafana admin password
```

## Dependencies

- docker role

## Example Playbook

```yaml
- hosts: monitoring_servers
  roles:
    - { role: docker }
    - { role: grafana_stack }
```

## Components

- Grafana (port 3000)
- Prometheus (port 9090)
- Promtail (port 9080)

## License

MIT

## Author Information

Created by Dimitrios Nicolay
