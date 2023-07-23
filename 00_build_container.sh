docker build -t rosberrypy.img -f Dockerfile.rbpy . 
docker stop rosberrypy
docker rm rosberrypy
docker run --name rosberrypy -it --privileged -v `pwd`:/opt/rosberrypy -v /dev:/dev rosberrypy.img