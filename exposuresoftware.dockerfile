# Stage 1: Build frontend assets
# IMPORTANT: Keep this Node version in sync with .nvmrc for local development
FROM node:24-alpine AS node-builder

WORKDIR /app

# Copy package files for better layer caching
COPY package*.json ./

# Install Node dependencies
RUN npm ci --production=false

# Copy source files needed for build
COPY . .

# Build production assets
RUN npm run prod

# Stage 2: Install Composer dependencies
FROM composer:latest AS composer-builder

WORKDIR /app

# Copy composer files for better layer caching
COPY composer.json composer.lock ./

# Install dependencies (no dev dependencies for production)
RUN composer install \
    --no-scripts \
    --no-interaction \
    --prefer-dist \
    --optimize-autoloader

# Stage 3: Final application image
FROM 635943190281.dkr.ecr.us-east-1.amazonaws.com/laravel-base:8.5

WORKDIR /var/www/html

# Copy application code
COPY --chown=www-data:www-data . .

# Copy Composer dependencies from composer-builder stage
COPY --from=composer-builder --chown=www-data:www-data /app/vendor ./vendor

# Copy built assets from node-builder stage
COPY --from=node-builder --chown=www-data:www-data /app/public ./public

# Generate optimized autoloader
RUN composer dump-autoload --optimize

# Create necessary directories and set permissions
RUN mkdir -p storage/framework/cache \
    storage/framework/sessions \
    storage/framework/views \
    storage/logs \
    bootstrap/cache \
    && chown -R www-data:www-data storage bootstrap/cache

USER www-data

EXPOSE 9000

CMD ["php-fpm"]
