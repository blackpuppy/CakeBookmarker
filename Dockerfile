FROM occitech/cakephp:nginx

ENV TZ=Asia/Shanghai
ENV SRC /src

# set timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#RUN curl -sSL https://getcomposer.org/installer | php \
#    && mv composer.phar /usr/local/bin/composer \
#    && apt-get update \
#    && apt-get install -y zlib1g-dev git \
#    && docker-php-ext-install zip \
#    && apt-get purge -y --auto-remove zlib1g-dev \
#    && rm -rf /var/lib/apt/lists/*

#RUN mkdir $SRC

#WORKDIR $SRC
#COPY package.json $SRC/package.json
#RUN npm install --global gulp
#RUN npm install

EXPOSE 80
