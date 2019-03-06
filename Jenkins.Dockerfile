FROM node

WORKDIR /emsi-website

# Copy source code to each project
COPY . /emsi-website

# Install packages for each project
RUN ["npm", "install"]
RUN ["npm", "install", "--prefix", "/emsi-website/emsi-client"]
RUN ["npm", "install", "--prefix", "/emsi-website/emsi-admin"]

# Run npm command to rebuild node-sass and start the server when the container starts
ENTRYPOINT ["npm", "run", "docker:entrypoint"]