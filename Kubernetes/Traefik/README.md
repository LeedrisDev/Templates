# Kubernetes Traefik Helm Deployment

This Deployment uses the official Helm Chart from [traefik](https://github.com/traefik/traefik-helm-chart) repository.

First create the namespace:
```bash
kubectl create namespace traefik
```

Then add the traefik repository to your helm installation:
```bash
helm repo add traefik https://traefik.github.io/charts
```

And install the traefik helm chart with our values:
```bash
helm install traefik traefik/traefik --namespace traefik --values values.yaml
```

If you want to remove the helm chart, use:
```bash
helm uninstall traefik --namespace traefik --purge
```