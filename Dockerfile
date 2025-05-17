#docker image ls
#es para ver las imagenes, se corre desde el terminal
#docker build -t wordcount-app .
#crea la imagen en el docker, debe estar abierto el docker desktop
#docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app
#esto es para Linux en Windows sería:
#docker run --rm -v "%cd%\data\input:/data/input" -v "%cd%\data\output:/data/output" wordcount-app #en revisipon

FROM python:3.11-slim
WORKDIR /appcl
COPY . .
RUN pip install -e .
# python3 -m homework data/input data/output
CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]



# docker run --rm -v "$PWD/data/input:/data/input/" -v "$PWD/data/output:/data/output/" wordcount-app


