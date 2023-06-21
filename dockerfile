FROM mambaorg/micromamba:0.15.3

USER root
RUN mkdir /opt/music_genre_classification
RUN chmod -R 777 /opt/music_genre_classification
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg
WORKDIR /opt/music_genre_classification
USER micromamba
COPY environment.yml environment.yml
RUN micromamba install -y -n base -f environment.yml && \
   micromamba clean --all --yes
COPY run.sh run.sh
COPY app.py app.py
COPY model.pkl model.pkl
COPY ffprobe.exe ffprobe.exe
USER root
RUN chmod a+x run.sh
CMD ["./run.sh"]