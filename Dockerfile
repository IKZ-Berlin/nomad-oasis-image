FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:v1.3.6
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
# RUN pip install requests==2.31.0
COPY nomad.yaml nomad.yaml
