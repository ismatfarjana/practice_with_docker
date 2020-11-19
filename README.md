# Why use docker?

It easily install and run any software without worrring about setup or dependencies on any computer or cloud based platform.
Normally , to install amy software we face errors and troubleshoot that and this cycle can go for long time.

---

# What is Docker?

Docker is the ecosystem of createing an drunning **containers**.

# What is **container**?

container is a running process along with subset of physical resources of the computer that are allocated to that process.

# what is happening while taking image and turning into a container?

![](https://i.imgur.com/1nhVk9M.png)

---

# Things to know

### Program to download:

Docker for window / Docker for Mac

### Tools inside Docker:

Docker Client (Docker CLI) - interaction tool , Docker server(Docker Daemon) - working tool, running behind the scene

### Docker CLI :

program that interacted via terminal. (enter command to terminal -> issue them to docker client -> it will decide what to do with the command). Docker CLI is just a tool that interact with another software included in docker package called as Docker server(docker daemon)

### Docker daemon:

this is responsible for creating container , images, maintaining containers, uploading images and everything else that happaens in Docker system

### Image Cache

local image storing area of computer

### Docker Hub

A repository of free public images to download

### Image

file system snapshot + startup command

---

---

# commands:

the process:

![](https://i.imgur.com/tzUwqC6.png)

| task                                             | command                                |                                                                    |
| ------------------------------------------------ | -------------------------------------- | ------------------------------------------------------------------ |
|                                                  | `docker run <name of image>`           |                                                                    |
| overwite default image command                   | `docker run hello-world echo hi there` | prints out hi there in terminal                                    |
| find out the list of all folders in container    | `docker run busybox ls`                | lists of folders shows up to terminal that belogs to the container |
| find out all running containers on local machine | `docker ps`                            | list of all the docker containers running in my machine            |
| list of all containers ever created              | `docker ps --all`                      | we will get the id of running container by this                    |

**if we try to execute command inside the containerthat doesnt belong to that program a error will occur**

---

# How docker is running in my computer?

- "Namespacing" and "Control Group"
  these are not available default in mac or windows. it is only availabe on linux

  while downloading Docker into my computer:

  ![](https://i.imgur.com/ChUpvrm.png)

---

### what happened when we run `docker run -it <redis>`

- after running the command, Docker cli reach out to docker hub
- it downloaded a single file called an **image**
- **image** is a single file that contains all the dependencies and all the configurations that we need to run a specific program, in this case **redis**. **image** gets stored into harddrive of my computer. And this image is used to create container. a **container** is an instance of an image, it is a program with its own hardware resources
-

---

---

# Why use `-it` to run software?

## localhost:3000 -> error. why???

by default no traffic that is coming into the computer(into localhost:3000 network) is routed into container though container has its own set of ports that can receive traffic,

## how to make sure that request is redirected to the container from my computer or any other comupter?

ans: **PORT MAPPING**: anytime a incoming req is given to the local network, it will be automatically forwarded to some port inside container.

## to do so, run :

`docker run -p < incoming req to the local target port>:<port in container> <docerfilename>`

## to get the shell

docker exec -it <id> sh

# -it is for? ---

to atach standard in and nice looking terminal to the shell
