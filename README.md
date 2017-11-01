# Workshop WebGoat JFall 2017

## Prerequisite

Download [ZAP](https://github.com/zaproxy/zaproxy/wiki/Downloads) and install it on your machine.

## Online

Open up a browser and point it to: http://35.203.170.243:8080/WebGoat/
Register as a new user.

## Run on local machine

NOTE: Only necessary if the online version is not available. 

### Using Docker image (Virtual Box)

Copy the Virtual Box image from the USB drive and import it in your local VirtualBox, start the image and point your browser to
http://localhost:8080

### Running jar file

Copy the jar files from the Virtual Box image and start WebGoat:

```
java -jar webgoat-8.0.0-M2.jar
```

### Using Docker image from Docker Hub

```
docker run -p 8080:8080 -t webgoat/webgoat-8.0.0-M2
```


## Download links for workshop:

[WebGoat 8.0.0-M2](https://github.com/WebGoat/WebGoat/releases/download/v8.0.0.M2/webgoat-server-8.0.0.M2.jar)
