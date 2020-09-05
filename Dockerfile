FROM codercom/code-server:latest

LABEL maintainer="red.avtovo@gmail.com"

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
	echo "source ~/.cargo/env" >> ~/.bashrc && \
	sudo apt update && sudo apt install build-essential pkg-config libssl-dev libpq-dev -y
