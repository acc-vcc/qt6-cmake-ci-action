FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y \
    python3 \
    python3-pip \
    cmake \
    ninja-build \
    git \
    curl \
    unzip

# Install aqtinstall
RUN pip3 install aqtinstall

# Entry point script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
