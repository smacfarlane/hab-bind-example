## Setup

```
export HAB_ORIGIN="myorigin"
scripts/build
```

This will build the two packages necessary, start test kitchen and install them.

Edit `scripts/start-nginx` and `scripts/start-haproxy` to set the origin. 

## Running

In terminal-1, run: 

```
kitchen login
/vagrant/scripts/start-proxy
```

In terminal-2, run:

```
kitchen login
/vagrant/scripts/start-nginx
```

You should now be able to hit https://10.10.10.10 from your workstation. 

## Reproducing

In terminal-3, run:

```
kitchen login
sudo hab config apply nginx.default 1 /vagrant/nginx.toml
```
