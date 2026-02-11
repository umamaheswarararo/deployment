# deployment
emm deployment
# deployment
emm deployment

## Project Overview

This project consists of multiple servers, each responsible for a specific functionality. Below is the structure of the project and the purpose of each folder, along with the hardware requirements for running the servers.

### Project Structure

#### `applications/`
This folder contains configuration files for various applications. Each configuration file corresponds to a specific application server.

- **`config/`**: Contains configuration files for the following servers:
  - `android-api-config.yaml`: Android API Server
  - `android-tv-config.yaml`: Android TV Server
  - `av-api-config.yaml`: Audio/Video API Server
  - `certmgr-config.yaml`: Certificate Manager Server
  - `chat-api-config.yaml`: Chat API Server
  - `client-reports-api-config.yaml`: Client Reports API Server
  - `collector-config.yaml`: Data Collector Server
  - `commons-config.yaml`: Commons Server
  - `digital-signage-api-config.yaml`: Digital Signage API Server
  - `files-api-config.yaml`: Files API Server
  - `idm-config.yaml`: Identity Management Server
  - ... (other configuration files for additional servers)
  
- **`templates/`**: Contains templates for server configurations.

#### `cache_mq_server/`
This folder contains resources for the Cache and Message Queue Server.

- **`podman_install.sh`**: Script to install Podman.
- **`nats/`**: Configuration and resources for the NATS server.
- **`opensearch/`**: Configuration and resources for OpenSearch.
- **`redis/`**: Configuration and resources for Redis.
- **`ttns/`**: Configuration and resources for TTNS.

#### `mongo/`
This folder contains resources for the MongoDB Server.

- **`docker-compose.yml`**: Docker Compose file for MongoDB setup.
- **`mongo_backup.sh`**: Script for MongoDB backup.
- **`podman_install.sh`**: Script to install Podman for MongoDB.
- **`rs-initiate.js`**: JavaScript file for MongoDB replica set initialization.

---

## Hardware Requirements

Each server in this project has the following minimum hardware requirements:

- **CPU**: 4 cores
- **RAM**: 8 GB
- **Storage**: 100 GB SSD
- **Network**: 1 Gbps Ethernet

For optimal performance, it is recommended to use dedicated hardware for each server.

---

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>