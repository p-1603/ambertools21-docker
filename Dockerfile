FROM continuumio/anaconda3
RUN apt -y update
RUN apt -y upgrade
RUN conda update --all
RUN conda update conda
RUN conda install -c conda-forge ambertools=21 compilers
RUN conda update -c conda-forge ambertools
