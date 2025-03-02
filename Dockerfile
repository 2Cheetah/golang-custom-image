FROM golang:1.23-bookworm

RUN apt-get update
RUN apt-get install -y zsh tree vim bat
RUN wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
RUN sh install.sh --unattended
RUN chsh -s "/usr/bin/zsh" "root"
RUN mkdir -p ~/.local/bin && ln -s /usr/bin/batcat ~/.local/bin/bat
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/HEAD/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.64.5
