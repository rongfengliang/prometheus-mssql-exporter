FROM node:12.16.1-alpine
LABEL EMAIL="dalongrong"
RUN yarn config set registry https://registry.npm.taobao.org
# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json *.js /usr/src/app/

# Install dependecies
RUN yarn  --production

# Expose the port the app runs in
EXPOSE 4000

# Serve the app
CMD ["node", "index.js"]
