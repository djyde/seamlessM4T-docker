FROM frolvlad/alpine-miniconda3

RUN apk add git

VOLUME ["/data"]

RUN git clone https://github.com/facebookresearch/seamless_communication /app
WORKDIR /app

RUN conda install -y -c conda-forge libsndfile
RUN pip install .

CMD ["/bin/bash"]