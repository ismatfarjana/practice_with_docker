![](https://i.imgur.com/DObjRtF.png)

# why use docker:

it easily install and run any software without worrring about setup or dependencies

## localhost:3000 -> error. why???

by default no traffic that is coming into the computer(into localhost:3000 network) is routed into container though container has its own set of ports that can receive traffic,

## how to make sure that request is redirected to the container from my computer or any other comupter?

ans: **PORT MAPPING**: anytime a incoming req is given to the local network, it will be automatically forwarded to some port inside container.

## to do so, run :

`docker run -p < incoming req to the local target port>:<port in container> <docerfilename>`

## to get the shell

docker exec -it <id> sh

# -it is for? --- to atach standaad in and nice looking terminal to the shell
