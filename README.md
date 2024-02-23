# tinygit

Tiny standalone git server

Run the docker image, point volume to /data.

For instance:

```
podman run -ti --rm -v /tmp/tinygit:/data:Z --name tinygit -p 2222:22 ghcr.io/rubenv/tinygit:v1.0.0
```

In `/data`:

```
/data/git -> git repositories
/data/keys -> SSHD keys (will be generated automatically if empty)
/data/mykey.pub -> Authorized SSH keys
```
