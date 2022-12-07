## Creating custom Nautobot file

ARG NAUTOBOT_IMAGE
ARG PYTHON_VER

FROM networktocode/nautobot:$NAUTOBOT_IMAGE-py$PYTHON_VER
COPY nautobot_config.py /opt/nautobot/nautobot_config.py

RUN pip install nautobot-golden-config