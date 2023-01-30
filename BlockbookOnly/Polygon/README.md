How to setup Polygon Blockbook
===


Polygon blockbook requires a fully synced Arbitrum node.

---
## Run blockbook only

Steps to set up:
1. Change Blockbook port if needed in Dockerfile

2. Build Dockerfile

    ```bash
    docker build -t <name> .
    ```

3. Change ```RPC_HOST``` and ```RPC_PORT``` variables in ```run.sh``` to connect to your Polygon node

4. Run the docker container

     ```bash
    docker run -p <blockbook-inbound-port>:<blockbook-outbound-port> <name>
    ```
---
## Run both node and blockbook:

```docker-compose up .```

---

## Ports:
Blockbook Ports:

1. 9144 - Blockbook explorer

Node Ports:

1. 30303 - Network discovery bootnodes port
2. 8545 - RPC port
3. 8546 - WS port
4. 26656 - Seeds port
---