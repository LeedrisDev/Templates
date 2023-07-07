# ArgoCD with Kubernetes

## Configuration

Let's start first by creating the namespace for ArgoCD:

```bash
kubectl create namespace argocd
```

Then we can install ArgoCD with the following command:

```bash
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

Then apply the ingress configuration to expose ArgoCD:

```bash
kubectl apply -f ingress.yaml
```

You need then to run in insecure mode:

```bash
kubectl edit deployment argocd-server -n argocd
```

Locate the `args` section under the `spec.template.spec.containers` section of the YAML.
Add the following argument to the args section : `--insecure`.

Now we can access ArgoCD via the ingress address. The default username is `admin` and the password is obtained by running:

```bash
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
```

## Usage

To link to your git repository, you need to create a secret with your ssh key:

```bash
ssh-keygen -t ed25519 -C "some comment"
```

Add the public key to your git repository (deploy key on GitHub) and then enter the private key in the web interface of ArgoCD.

