FROM debian:bullseye

RUN apt update && \
    apt install -y ca-certificates curl git zsh

# terminal colors with xterm
ENV TERM xterm
# set the zsh theme
ENV ZSH_THEME af-magic

RUN curl https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -LsSf | zsh
RUN chsh -s /usr/bin/zsh

SHELL [ "/usr/bin/zsh", "-c" ]
CMD [ "/usr/bin/zsh" ]
