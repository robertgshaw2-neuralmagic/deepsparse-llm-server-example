FROM python:3.10-slim-bullseye

RUN pip install deepsparse_nightly[llm,server] --upgrade

COPY download_model.py /download_model.py

RUN python /download_model.py

COPY config.yaml /config.yaml

CMD deepsparse.server --config_file config.yaml
