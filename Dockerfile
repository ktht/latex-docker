FROM alpine:latest
ARG scheme=full

LABEL \
  org.opencontainers.image.title="Docker Image of TeXLive" \
  org.opencontainers.image.authors="Cheng Xu <copyright@xuc.me> (forked)" \
  org.opencontainers.image.source="https://github.com/ktht/latex-docker" \
  org.opencontainers.image.licenses="MIT"

ENV PATH="/opt/texlive/texdir/bin/x86_64-linuxmusl:${PATH}"

COPY \
  LICENSE \
  README.md \
  setup.sh \
  texlive.profile \
  texlive_pgp_keys.asc \
  /

RUN /setup.sh ${scheme}

CMD ["/bin/bash"]
