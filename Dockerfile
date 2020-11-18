# Specify a base image
FROM node:10-alpine
# q: why tied alpine to node?
# ans: alpine is a image in doceker that is very small and compact. alpine version of node means it will not have additional pre installed program


# allow package.json and index.js in side the container
# everything forn the current directory to the current working directory inside the container
COPY ./ ./ 
#Install dependencies
RUN npm install





##Default command 
CMD ["npm", "start"]

# why use docker:
# it easily install and run any software without worrring about setup or dependencies