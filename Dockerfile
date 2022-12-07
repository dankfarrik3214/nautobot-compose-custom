## Creating custom Nautobot file

ARG NAUTOBOT_IMAGE
ARG PYTHON_VER

FROM networktocode/nautobot:$NAUTOBOT_IMAGE-py$PYTHON_VER
COPY nautobot_config.py /opt/nautobot/nautobot_config.py

RUN pip3 install --upgrade pip wheel
RUN pip3 install --upgrade nautobot[napalm]
RUN pip3 install nautobot-golden-config