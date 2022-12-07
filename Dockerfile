## Creating custom Nautobot file
FROM networktocode/${NAUTOBOT_IMAGE}-py${PYTHON_VER}

RUN pip install nautobot-golden-config