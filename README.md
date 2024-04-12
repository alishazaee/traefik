# Traefik-based DevOps Platform

This project sets up a robust DevOps environment using Docker and Traefik as a reverse proxy to route traffic to various services including Sonatype Nexus, WordPress, Prometheus, Grafana, and a custom Nginx server. It is designed to provide a comprehensive development, CI/CD, and monitoring platform.

## Components

- **Traefik**: Serves as the reverse proxy and load balancer with automatic SSL certificate resolution via ACME, detailed logging, and API access for configuration.
- **Sonatype Nexus**: Used for storing artifacts and as a Docker registry.
- **WordPress**: Provides a blogging platform, connected to a MariaDB database.
- **MariaDB**: SQL database used by WordPress.
- **Prometheus**: Monitoring system with time series data storage.
- **Grafana**: Analytics and monitoring platform that integrates with Prometheus.
- **Nginx**: Web server configured to serve as the front-end for hosted applications.
- **Fluentd**: Logging architecture to capture and process Nginx logs.

## Prerequisites

- Docker installed on your machine.
- Docker Compose installed on your machine.

## Setup and Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/alishazaee/traefik
   cd traefik

2. **Setup the project using docker-compose:**
   ```bash
   docker-compose up -d
3. **Generate simulated Traffic:**
   ```bash
   cd traffic-generator
   chmod 777 generator.sh
   ./generator.sh

## grafana dashboards
![Screenshot from 2024-04-11 18-14-06](https://github.com/alishazaee/traefik/assets/53411387/3407e7b9-33f8-48ac-8c56-2aa044696c4f)

![Screenshot from 2024-04-11 18-14-06](https://github.com/alishazaee/traefik/assets/53411387/2532ef55-6e84-4092-8643-438765cadf9b)

### Generate Treafik pass
```
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
