Debug Docker .Net core apps
===========================
This project consists of an MVC .Net Core app that can
be run in a Docker container.
The following steps provide a way to debug code deployed
into a container using Visual Studio Code.

Get started
-----------
Build the Docker image for debug
```bash
docker -t mvc-app-debug:latest .
```
Run the container
```bash
docker run -it -p 8080:80 --name mvc-app-debug_container mvc-app-debug:latest 
```
Set a breakpoint in VSCode and start the Debugger using the
configuration `.NET Core Docker Attach`.

Happy debug!

Build, run and debug in one go!
-------------------------------
Select `.NET Core Docker Launch` and press F5.

This configuration will:
1. build the Docker image `mvc-app-debug:latest`
1. delete any existing container named `mvc-app-debug_container`
1. create a new container named `mvc-app-debug_container`
1. run the container
1. attach the `vsdbg` to VSCode
