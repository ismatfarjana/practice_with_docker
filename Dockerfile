# Specify a base image
FROM node:10-alpine
# q: why tied alpine to node?
# ans: alpine is a image in doceker that is very small and compact. alpine version of node means it will not have additional pre installed program

# isolating app(dockerfile+ dependecies+ packg.json) into /user/app folder to aviod conflict with default folder system of the container. we will copy everything into a nested directory style. not inthe root directory. all follwoing command will be executed relative to /usr/app folder, not in root directory
WORKDIR /usr/app

# allow package.json and index.js in side the container
# copy everything form the current directory to the current working directory/file that we care about to copy inside the container
COPY ./package.json ./ 
# seperate the copy operation into 2 steps
#Install dependencies
RUN npm install
# after all copy over of dependencies
COPY ./ ./





##Default command 
CMD ["npm", "start"]

