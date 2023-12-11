FROM gcc:bookworm AS builder
ARG GIT_URL=https://github.com/Wind4/vlmcsd.git

WORKDIR /root
RUN git clone --recursive ${GIT_URL}
WORKDIR vlmcsd
RUN make

FROM gcr.io/distroless/base-nossl-debian12:nonroot

COPY --from=builder /root/vlmcsd/bin/vlmcsd /usr/bin/vlmcsd

EXPOSE 1688/tcp
ENTRYPOINT [ "/usr/bin/vlmcsd" ]
CMD [ "-e", "-D", "-d" ]
