
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Andrew Cencini <andrew@vapor.io>

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
RUN pip install pyserial
RUN pip install flask

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
