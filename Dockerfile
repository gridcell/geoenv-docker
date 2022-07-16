FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y

RUN apt install -y \
    --no-install-recommends\
    vim \
    wget \
    htop \
    tzdata \
    python3.10 \
    python3-pip \
    python3-opencv \
    libgeos-dev \
    libgeos3.10.2 \
    libproj22 \
    proj-bin \
    libproj-dev \
    libgdal-dev \
    libgdal30 \
    gdal-bin \
    python3-gdal \
    python3-numpy \
    python3-cartopy \
    postgresql-client \
    make

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install --no-cache-dir \
    cython \
    boto3 \
    awscli \
    pandas \
    geopandas \
    rasterio==1.3a3 \
    shapely \
    pyproj \
    pygeos \
    pyepsg \
    pystac \
    pystac-client \
    sat-search \
    rio-tiler \
    rioxarray \
    jupyterlab \
    jupyter-panel-proxy \
    jupyter-resource-usage \
    jupyterlab-geojson \
    ipywidgets \
    ipyleaflet \
    leafmap \
    "dask[complete]" \
    dask-ml \
    dask-labextension \
    stackstac \
    sparse \
    seaborn \
    stac-vrt \
    xarray \
    xarray-spatial \
    scikit-learn \
    scikit-image \
    satpy \
    scipy \
    rich \
    netcdf4 \
    pyarrow \
    pytest \
    black \
    isort \
    flake8 \
    psycopg2
