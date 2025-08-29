FROM n8nio/n8n:latest

# Install all libraries needed for Chrome
USER root
RUN apt-get update && apt-get install -y \
  libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 \
  libdbus-1-3 libxkbcommon0 libx11-6 libxcomposite1 libxdamage1 \
  libxext6 libxfixes3 libxrandr2 libgbm1 libcairo2 libpango-1.0-0 \
  libasound2 fonts-liberation xdg-utils wget ca-certificates \
  && rm -rf /var/lib/apt/lists/*

USER node
