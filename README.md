# emsi-website

This project has been dockerized. While it is possible to run this application without docker, it is highly recommended to run this application using docker. 

This project requires many environment variables as noted below (and seen in docker.mock.env):
* MAPS_API_KEY
* REACT_APP_API_KEY
* REACT_APP_AUTH_DOMAIN
* REACT_APP_PROJECT_ID
* REACT_APP_STORAGE_BUCKET
* DATABASE_URL
* CLIENT_EMAIL
* PRIVATE_KEY

To run this project using docker:
1. Edit the docker.mock.env file with all environment variables
2. Rename the file to docker.env
3. Run 'npm run docker:start'
4. Open localhost:3000 in browser

Note: 

The command, docker:start, will clean up existing docker images and containers, create a new docker image from this project, and then start a docker container with the project src mounted into the container.

During development, you most likely will only need create the docker image once, and use it throughout the rest of development (unless you have changed the package dependencies for a project). But, to create the image again, you can run the command 'npm run docker:image'. Otherwise, you can just run 'npm run docker:restart'

If you've exited out of the container, you need to first clean up the existing container and then start the container again. To do both actions, you can run the following command 'npm run docker:restart'.

To open a shell within a running container, run the following command, 'npm run docker:shell'. This is useful for running unit tests or debugging the project files from within the container. 

To run the application without docker:
1. Run 'npm install'
2. Export the environment variables listed above
3. Run 'npm start'
4. Open browser and navigate to localhost:3000
