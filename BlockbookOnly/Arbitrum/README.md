How to setup Arbitrum Blockbook
===


Arbitrum blockbook requires a fully synced Arbitrum node.

Steps to set up:
1. Change Blockbook port if needed in Dockerfile

2. Build Dockerfile

    ```bash
    docker build -t <name> .
    ```

3. Change ```RPC_HOST``` and ```RPC_PORT``` variables in ```run.sh``` to connect to your Arbitrum node

4. Run the docker container

     ```bash
    docker run -p <blockbook-inbound-port>:<blockbook-outbound-port> <name>
    ```

Ports:
<br>
1. 28547 - HTTP RPC Port
2. 28548 - WS RPC Port
---