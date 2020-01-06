FROM koalaman/shellcheck:latest as shellcheck

FROM golang:alpine
COPY --from=shellcheck /bin/shellcheck /usr/bin
RUN apk add git bash
RUN go get github.com/hashicorp/terraform
CMD /bin/bash
