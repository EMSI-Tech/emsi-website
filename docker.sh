#!/bin/sh

# Start docker container
# Mount src folders into container
# Expose 3000 and pass in env variables
docker run -t -i --expose 3000 -p 0.0.0.0:3000:3000 --name emsi --env-file=./docker.env \
--mount type=bind,source="$(pwd)"/emsi-server,target=/emsi-website/emsi-server \
--mount type=bind,source="$(pwd)"/emsi-client,target=/emsi-website/emsi-client \
--mount type=bind,source="$(pwd)"/emsi-admin,target=/emsi-website/emsi-admin \
emsi-img

# docker run -t -i -d --expose 3000 -p 0.0.0.0:3000:3000 --name emsi \
# -e MAPS_API_KEY -e REACT_APP_API_KEY -e REACT_APP_AUTH_DOMAIN -e REACT_APP_PROJECT_ID \
# -e REACT_APP_STORAGE_BUCKET -e DATABASE_URL -e CLIENT_EMAIL -e PRIVATE_KEY \
# --mount type=bind,source="$(pwd)"/emsi-server,target=/emsi-website/emsi-server \
# --mount type=bind,source="$(pwd)"/emsi-client,target=/emsi-website/emsi-client \
# --mount type=bind,source="$(pwd)"/emsi-admin,target=/emsi-website/emsi-admin \
# emsi-img