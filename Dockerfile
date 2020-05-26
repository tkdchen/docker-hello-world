FROM fedora:32

LABEL com.redhat.component="container-hello-world" \
      name="tkdchen/container-hello-world" \
      version="0.1"

ENV GREETING="Hello there."

RUN dnf update -y && \
    dnf install -y which dnf-utils neovim python3-devel gcc && \
    dnf clean all

CMD printf "%s\n" "$GREETING"
