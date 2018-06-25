FROM scratch
ADD certs.crt /etc/ssl/certs/
ADD go-docker-build-test main
ENV PORT 80
EXPOSE 80
ENTRYPOINT ["/main"]
