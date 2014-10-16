## cayley-docker

A Docker image for [Cayley](https://github.com/google/cayley), an open-source graph database inspired by [Freebase](http://freebase.com) and Google's [Knowledge Graph](http://www.google.com/insidesearch/features/search/knowledge.html).

## Getting Started

```
docker run -d saidimu/cayley
```

Then open http://127.0.0.1:64210 from your browser for the web GUI.

## Getting Started with [fig](http://www.fig.sh/)

If you have [fig](http://www.fig.sh/) installed, clone this repository and run the following command from within the cloned repository folder
```
git clone git@github.com:saidimu/cayley-docker.git
cd cayley-docker
fig up -d
fig logs
```

Then open http://127.0.0.1:64210 from your browser for the web GUI.
