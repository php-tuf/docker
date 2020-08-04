FROM python:3.8-buster

LABEL authors="Harald Leithner"

# Create virtual environment
RUN python3 -m venv /venv

# Clone php-tuf repo and install dependencies
RUN . /venv/bin/activate && cd /venv && git clone https://github.com/php-tuf/php-tuf.git && cd /venv/php-tuf && /venv/bin/pip install -r requirements.txt

# Start a bash in the python environment
CMD . /venv/bin/activate && cd /opt && /bin/bash
