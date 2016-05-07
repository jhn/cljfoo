# cljfoo

Minimal Compojure + Ring app, ready to be uberjared and Dockerized.

## Dependencies

* [Leiningen](https://github.com/technomancy/leiningen)
* [Docker](http://docs.docker.com/engine/installation/)

## Instructions

Clone project. Replace `cljfoo` with your project's name.

### Running

To start a web server for the application, run:

    lein ring server

### Docker

Create standard uberjar, build the Docker image, run it like the wind.

1. Create uberjar

    ```
    lein uberjar
    ```

2. Build Docker image

    ```
    docker build -t cljfoo .
    ```

3. Run container

    ```bash
    docker run -d   \  # daemonized
      -p 80:3000    \  # host:jetty
      -p 3001:3001  \  # host:nrepl
      --name cljfoo \  # container name
      cljfoo           # image
    ```

## License

Copyright © 2016 Johan Mena

Distributed under the Eclipse Public License, the same as Clojure.

