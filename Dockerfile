#pull nginx image
FROM nginx

#file maintainer 
MAINTAINER atharvamuley12@gmail.com

#update lib
RUN apt-get update && apt-get upgrade -y

#add user
RUN useradd -ms /bin/bash Nature2

#add file in user
ADD target/Nature2.war  /home/Nature2/
