FROM golang:1.8

ENV GLIDE_VER 0.12.3

RUN set -x                                        && \
		go get github.com/Masterminds/glide           && \
		cd ${GOPATH}/src/github.com/Masterminds/glide && \
		git checkout v${GLIDE_VER}                    && \
		go install
