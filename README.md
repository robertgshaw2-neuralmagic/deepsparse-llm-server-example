Build Docker Image:

```bash
docker build -t ds .
```

Launch Docker Container:

```bash
docker run --rm -p 5543:5543 -it ds
```

Make Requests (in `server-interaction.py`)