FROM mcr.microsoft.com/devcontainers/php:1-8.2-bookworm

# Install system dependencies
RUN apt-get -y update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y \
    mariadb-client \
    sqlite3 \
    libicu-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install dependencies for PHP extensions
RUN docker-php-ext-configure intl \
    && docker-php-ext-install intl

# Create fohn-group directory
RUN mkdir -p /workspace/fohn-ui \
    && chown -R vscode:vscode /workspace/fohn-ui \
    && chmod a+x /workspace/fohn-ui && rm -rf /var/www/html && ln -s /workspace/fohn-ui /var/www/html \
    && mkdir -p /workspace/fohn-js \
    && chown -R vscode:vscode /workspace/fohn-js \
    && mkdir -p /workspace/fohn-css \
    && chown -R vscode:vscode /workspace/fohn-css

# Enable mod-rewrite module in apache.
RUN a2enmod rewrite

    
# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
