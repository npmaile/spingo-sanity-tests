from golang:alpine
RUN apk add git cabal ghc wget libc-dev bash
RUN go get github.com/hashicorp/terraform
RUN cabal update
RUN cabal install ShellCheck
RUN ln -sf /root/.cabal/bin/shellcheck /usr/bin
CMD /bin/bash
