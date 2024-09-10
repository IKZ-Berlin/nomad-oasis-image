FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:1.3.7.dev43+gb3af99c0e
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
# RUN pip install requests==2.31.0
COPY nomad.yaml nomad.yaml
