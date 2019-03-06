FROM node

# Make folders for each project
RUN ["mkdir", "/emsi-website"]
RUN ["mkdir", "/emsi-website/emsi-client"]
RUN ["mkdir", "/emsi-website/emsi-admin"]
WORKDIR /emsi-website

# Copy package and package lock jsons to each project
COPY package*.json /emsi-website/
COPY emsi-client/package*.json /emsi-website/emsi-client/
COPY emsi-admin/package*.json /emsi-website/emsi-admin/

# Install packages for each project
RUN ["npm", "install"]
RUN ["npm", "install", "--prefix", "/emsi-website/emsi-client"]
RUN ["npm", "install", "--prefix", "/emsi-website/emsi-admin"]

# Create docker volume for the node_modules that would be overridden by bind mount
VOLUME ["/emsi-website/emsi-client/node_modules", "/emsi-website/emsi-admin/node_modules"]

# Run npm command to rebuild node-sass and start the server when the container starts
ENTRYPOINT ["npm", "run", "docker:entrypoint"]