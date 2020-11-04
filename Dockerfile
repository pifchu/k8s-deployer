FROM alpine:3.12

ENV KUBECTL_VERSION 1.19.3
ENV KUSTOMIZE_VERSION 3.8.6

RUN apk add gettext --no-cache
RUN apk add curl --no-cache

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    | tar xvz -C /usr/local/bin \
    && chmod +x /usr/local/bin/kustomize
