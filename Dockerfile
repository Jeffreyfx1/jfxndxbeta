FROM node:lts-buster

# Install required system packages for sharp and node-gyp
RUN apt-get update && apt-get install -y \
    build-essential \
    libvips-dev \
    python3 \
    make \
    g++ \
    && apt-get clean

# Clone your own GitHub repo
RUN git clone https://github.com/Jeffreyfx1/jfxndxbeta.git /root/jfxndxbeta

# Set working directory
WORKDIR /root/jfxndxbeta

# Install dependencies and PM2
RUN npm install && npm install -g pm2

# Expose port used by your bot
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]
