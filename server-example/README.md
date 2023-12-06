### Model
We made a deepsparse 50% sparse int8 version of a popular llama2 fine-tune (for instruction following).

See: https://huggingface.co/mgoin/Nous-Hermes-llama-2-7b-pruned50-quant-ds

### Play Locally

Checkout Using the Pipeline (in `pipeline-interaction.ipynb`)

### Launch Server

Build Docker Image:

```bash
docker build -t ds .
```

Launch Docker Container:

```bash
docker run --rm -p 5543:5543 -it ds
```

Make Requests (in `server-interaction.ipynb`)
