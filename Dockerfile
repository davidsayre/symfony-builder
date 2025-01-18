FROM php:8.3

# symconf-cli
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash && apt install -y symfony-cli
# composer likes zip
RUN apt update && apt install -y libzip-dev zip
RUN docker-php-ext-install zip
# composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# run as 'app'
RUN mkdir -p /app
WORKDIR /app
RUN useradd -u 1000 app -m -s /bin/bash
USER app
RUN git config --global user.email "docker@localhost.co" && git config --global user.name "Docker"