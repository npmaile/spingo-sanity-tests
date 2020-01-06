from golang:alpine
RUN apk add git cabal ghc wget libc-dev bash
RUN go get github.com/hashicorp/terraform
RUN cabal update
run cabal install ShellCheck
run ln -sf /root/.cabal/bin/shellcheck /usr/bin
run /bin/bash
