
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Andrew Cencini <andrew@vapor.io>

# Install dependencies
RUN apt-get update && apt-get install -y \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
RUN pip install pyserial

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
