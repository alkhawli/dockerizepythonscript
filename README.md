# Dockerizing Python Scripts

## Use it as initial project
- Cotains python scripts
- Cotains requirements.txt
- Cotains Dockerfile


## Run Session on Local Machine

Building Image
```bash
docker build . -t pythonmain
```

Run Image as container, 
```bash
docker run --name container1 -d -it --rm pythonmain
```

View Logs 
```bash
docker log -f container1 
```

