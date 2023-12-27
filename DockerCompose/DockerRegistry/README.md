# Docker Registry

## Generate credentials using htpasswd

```bash
sudo htpasswd -Bc registry.password <username>
```

## Create and start the registry

You can now use the compose file to create and start the registry.  
This is a template and its up to you to change the values to your needs.

```bash
docker compose up -d
```