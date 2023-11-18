FROM python:3.10-slim-bullseye

COPY deepsparse_nightly-1.6.0.20231117-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl /deepsparse_nightly-1.6.0.20231117-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

RUN pip install deepsparse_nightly-1.6.0.20231117-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl[llm,server]

COPY download_model.py /download_model.py

RUN python /download_model.py

COPY config.yaml /config.yaml

CMD deepsparse.server --config_file config.yaml