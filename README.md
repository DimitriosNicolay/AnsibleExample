# Ansible Learning Project (🚧 Work In Progress)

> ⚠️ **Note**: This project is under active development as a learning exercise. Features and documentation are being regularly updated.

This project demonstrates infrastructure automation using Ansible, focusing on setting up a mixed Windows/Linux environment with monitoring capabilities.

## 🏗️ Current Status

✅ Implemented:
- Basic project structure
- Docker installation role
- Initial monitoring stack (Grafana, Prometheus)
- Cross-platform log collection
- Active Directory integration
- Secure credential management with Ansible Vault

🚧 In Progress:
- Role testing and validation
- Security hardening
- Documentation improvements
- Best practices implementation

## Project Structure

```
AnsibleExample/
├── inventory/              # Host and group configurations
├── roles/                 # Ansible roles
├── templates/             # Role templates
├── scripts/              # Maintenance scripts
├── ansible.cfg           # Ansible configuration
└── playbook.yaml        # Main playbook
```

## Prerequisites

- WSL (Windows Subsystem for Linux)
- Ansible 2.9 or higher
- Python 3.x
- Access to target systems (Windows/Linux)

## Getting Started

1. Clone this repository
2. Install Ansible in WSL:
```bash
sudo apt update
sudo apt install ansible
```

3. Create vault password:
```bash
echo "your-secure-password" > .vault-pass
```

## Available Roles

- `docker`: Docker CE installation
- `grafana_stack`: Monitoring stack deployment
- `promtail_linux`: Linux log collection
- `promtail_windows`: Windows log collection
- `realmd_join`: Active Directory integration

## Learning Objectives

This project serves as a practical exercise in:
- Infrastructure as Code
- Configuration management
- Cross-platform automation
- Security practices
- Monitoring implementation

## Contributing

As this is a learning project, feedback and suggestions are welcome! Please note that features are still being developed and tested.

## License

MIT

## Author

Created by Dimitrios Nicolay as part of learning Ansible and infrastructure automation.

---
> 📝 **Development Note**: This project is continuously evolving as new concepts are learned and implemented. Some features might not be fully functional or documented.