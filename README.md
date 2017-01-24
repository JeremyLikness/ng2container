# Angular 2 CLI Container 

This Dockerfile will create a container for Angular 2 development. Use this if you do not want to install the CLI or Node.js on your local machine or just to have a stable environment to work with. 

## Get Started 

Edit the `Dockerfile` if you want to work with a different version of the Angular CLI. 

To build the image: 

`docker build -t ng2build .` 

To run the image: 

`docker run --name ng2builder -v /c/Users/path/to/ng2/project:/src -it ng2build`

You can change the volume mount based on your system. For Windows users, you will need to share the C drive in the Docker for Windows settings for the mount to work. 

If you have an existing project, you can simply: 

`cd src`

`ng build`

If you want to create a new one, follow the instructions (i.e. `ng init` for the CLI).

To cleanup: 

`docker stop ng2builder`

`docker rm ng2builder`
