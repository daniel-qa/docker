#!/bin/bash
# To start the application stack, in the same folder as the docker-compose.yml file, run:

# Start the application stack defined in docker-compose.yml
docker-compose up -d

# Similar to docker run, the -d flag lets us run our application stack in the background. The command to stop and remove all containers and networks is:

# Stop the application stack
docker-compose down


# Check status
 docker-compose ps
