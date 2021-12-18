
FROM paperist/texlive-ja:latest AS texlive-ja

FROM node:lts

ARG USERNAME=vscode
ARG UID=1000
ARG GID=${UID}

WORKDIR /workdir

# Install TeXLive from paperist/texlive-ja:latest

COPY --from=texlive-ja /usr/local/texlive /usr/local/texlive
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive
ENV PATH /usr/local/bin/texlive:$PATH

# Install packages

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    cpanminus \
    curl \
    git \
    gnupg2 \
    locales \
    python3-pygments \
    wget

# Install latexindent
RUN tlmgr install latexindent
RUN cpanm Log::Log4perl Log::Dispatch::File YAML::Tiny File::HomeDir Unicode::GCString

# Setting user

RUN userdel node \
    && groupadd --gid ${GID} ${USERNAME} \
    && useradd --uid ${UID} --gid ${GID} --shell /bin/bash --create-home ${USERNAME}


USER ${USERNAME}

# Install .latexmkrc

COPY .latexmkrc /home/${USERNAME}


CMD ["bash"]
