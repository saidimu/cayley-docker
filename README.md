## cayley-docker

A Docker image for [Cayley](https://github.com/google/cayley), an open-source graph database inspired by [Freebase](http://freebase.com) and Google's [Knowledge Graph](http://www.google.com/insidesearch/features/search/knowledge.html).

#### Getting Started

```
docker run -d -p 64210:64210 saidimu/cayley
```

Then open `http://127.0.0.1:64210` from your browser for the web GUI.

#### Getting Started with fig

If you have [fig](http://www.fig.sh/) installed, clone this repository and execute the following commands:
```
git clone git@github.com:saidimu/cayley-docker.git
cd cayley-docker
fig up -d
fig logs
```

Then open `http://127.0.0.1:64210` from your browser for the web GUI.

#### Attach persistent/shared directories using host-mounted volumes

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create a [Cayley config file](https://github.com/google/cayley/blob/master/docs%2FConfiguration.md) at `<data-dir>/cayley.cfg`.

    ```json
    {
      "database": "bolt",
      "db_path": "/data/boltdb",
      "listen_host": "0.0.0.0"
    }
    ```

    Note that `listen_host` must be set to `0.0.0.0` for Cayley to be accesible from outside the container.


  3. Start a container by mounting the data directory on the host to /data in the container:

    ```sh
    docker run -d -p 64210:64210 -v <data-dir>:/data saidimu/cayley
    ```

