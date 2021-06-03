FROM continuumio/anaconda3
RUN apt -y update
RUN apt -y upgrade
RUN conda update --all
RUN conda update conda
RUN conda install -c conda-forge ambertools=21 compilers
RUN conda update -c conda-forge ambertools

#FROM ubuntu:20.04
# The following command should install all necessary packages to compile Amber on Ubuntu 19.10:
#RUN apt -y update
#RUN apt -y install tcsh make \
#               gcc gfortran \
#               flex bison patch \
#               bc xorg-dev libbz2-dev wget
## If you want to install Amber in parallel, you can use OpenMPI through:
#RUN apt -y install openmpi-bin libopenmpi-dev openssh-client 
## The installation of Amber is performed in two steps: cmake configuration, then building and install:
#COPY ./AmberTools21.tar.bz2 /root/
#RUN tar -xf ./AmberTools21.tar.bz2
#RUN cd amber20_src/build
## optional: edit the run_cmake script to make any needed changes;
## most users should not need to do this
#RUN ./run_cmake
## Next, build and install the code:
#RUN make install 
