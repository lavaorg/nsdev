# nsdev
NorthStar development environment.

This project will contain a suggested development environment and scripts/tools to build the various services that comprise the NorthStar platform.  The code for the NorthStar platform and any dependencies will be individual repositories that could be resused in other projects or other development environment.  

The development environment will follow the following usage
* Scripts will control getting the code repositores by performing git operation
* Builds will be performed via Docker containers (builders) that contain the relevant tools 
* Builders will act on the file sytem external to the docker conainer (e.g. this build env)
* Builders will create the relevant .a and executables for the relevant target (primarily Linux x86)
* Scripts will create Docker (OCI) images as a seprate step after the build. 

# build steps
* . init
* nsgoget
* make build

# clean the build artifacts
* make wsclean

# reset the build and src; this indiscriminately destroys all downloaded content and built artifacts
* make wsnuke
