FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:develop
USER root
RUN apt-get update
RUN apt-get -y install git
RUN pip install --no-cache-dir \
    --pre --extra-index-url https://gitlab.mpcdf.mpg.de/api/v4/projects/2187/packages/pypi/simple \
        'nomad-lab==1.3.7.dev61+g0140db725'
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
# RUN pip install requests==2.31.0
COPY nomad.yaml nomad.yaml
