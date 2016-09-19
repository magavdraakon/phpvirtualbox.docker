
Simplified phpvirtualbox docker image.

# Build

```sh
git clone https://github.com/keijokapp/phpvirtualbox.docker.git
cd phpvirtualbox
docker build -t keijokapp/phpvirtualbox:latest .
```

# Run

```sh
docker run -d \
        -e "VBOX_USERNAME=vbox" \
        -e "VBOX_PASSWORD=vbox_pw" \
        -e "VBOX_LOCATION=http://172.17.0.1:18083/" \
        --name phpvirtualbox \
        --publish "4433:80" \
        keijokapp/phpvirtualbox
```
