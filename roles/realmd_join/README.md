# Active Directory Integration Role

Integrates Linux systems with Active Directory using realmd.

## Requirements

- Ubuntu 20.04/22.04
- Active Directory domain
- Network connectivity to AD

## Role Variables

Required variables (define in vault):
```yaml
ad_domain: "example.com"      # Active Directory domain
ad_user: "administrator"      # AD user with join permissions
ad_password: "secret"         # AD user password
ad_admin_group: "linux-admins" # AD group for sudo access
```

## Dependencies

None. Role installs required packages:
- realmd
- sssd
- adcli
- samba-common-bin
- oddjob
- oddjob-mkhomedir

## Example Playbook

```yaml
- hosts: linux_clients
  roles:
    - { role: realmd_join, tags: ['realmd_join'] }
```

## Role Actions

1. Installs required packages
2. Discovers AD domain
3. Joins system to domain
4. Configures home directory creation
5. Sets up sudo access for AD group

## License

MIT

## Author Information

Created by Dimitrios Nicolay
