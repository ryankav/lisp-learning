FROM clfoundation/sbcl:alpine3.13

RUN apk update && apk --no-cache --upgrade add \
    git \
    gvim \
    python3 \
    tmux

RUN git clone https://github.com/kovisoft/slimv.git ~/.vim/pack/plugins/start/slimv \
    && vim +'helptags ~/.vim/pack/plugins/start/slimv/doc' +q

WORKDIR /lisp

CMD ["/bin/sh"]
