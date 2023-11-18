from huggingface_hub import snapshot_download

MODEL_ID = "mgoin/Nous-Hermes-llama-2-7b-pruned50-quant-ds"

if __name__ == "__main__":
    snapshot_download(repo_id=MODEL_ID)