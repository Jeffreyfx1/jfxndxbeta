FROM node:lts-buster

# Clone your own GitHub repo
RUN git clone https://github.com/Jeffreyfx1/jfxndxbeta.git /root/jfxndxbeta

# Set working directory
WORKDIR /root/jfxndxbeta

# Install dependencies
RUN npm install && npm install -g pm2

# Copy the rest of the code (optional if you're using Git clone)
# COPY . .

# Expose port used by your bot (adjust if different)
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]
