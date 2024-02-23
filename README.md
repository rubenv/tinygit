# tinygit

> Tiny standalone git server

## Data folder structure

```
/data/git -> git repositories
/data/keys -> SSHD keys (will be generated automatically if empty)
/data/mykey.pub -> Authorized SSH keys (at least one must exist!)
```

## Docker

Run the docker image, point volume to /data.

For instance:

```
podman run -ti --rm -v /tmp/tinygit:/data:Z --name tinygit -p 2222:22 ghcr.io/rubenv/tinygit
```

## Helm

```
helm repo add tinygit https://rubenv.github.io/tinygit
helm upgrade --install tinygit tinygit/tinygit --set dataPath=/data/git
```
