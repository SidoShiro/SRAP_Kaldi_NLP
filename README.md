# README - Kaldi SRAP SandBox Project

## Install

Check requirements before installation.

### Install with Docker

Run

```sh
./build_docker.sh

./run_docker.sh
```

### Install without Docker


Run

```sh
./new_install.sh
```

#### Requirements

General Requirements

* Linux/OS X
* srlim-1.7.3.tar.gz from [SRLIM](http://www.speech.sri.com/projects/srilm/download.html)
* docker (if you want to use Docker)

On system install (not docker)

* Atlas
* gcc
* cmake
* bash
* libfst-tools
* ...

## Receipes and Usage

* English Receipe

```sh
./make_en_receipe.sh [NB_JOBS_TRAIN] [NB_JOBS_DECODE]

# WARNING can be very long ~ 6-20h 
./train_en_receipe.sh
```

* French Receipe

```sh
./make_fr_receipe.sh

./train_fr_receipe.sh
```

## Authors

> Most of the work comes from the [kaldi repository](https://github.com/kaldi-asr/kaldi)

* Itectori
* SidoShiro

