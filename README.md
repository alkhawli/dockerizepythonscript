# dockerizepythonscript

# Dockerizing Python Scripts

## Features

- Session traces network activities and writes them into Filestorage or Elasticsearch
- Operator automatically creates sessions on MQTT messages in Kubernetes Jobs


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

