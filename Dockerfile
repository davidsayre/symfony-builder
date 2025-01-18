FROM php:8.3

RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash && apt install -y symfony-cli
RUN git config --global user.email "docker@localhost.co" && git config --global user.name "Docker"
RUN mkdir -p /app
WORKDIR /app
RUN useradd -u 1000 app
USER app