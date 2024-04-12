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

This project includes comprehensive monitoring solutions for Nginx using Grafana dashboards. Through the integration of Prometheus and Nginx exporter, as well as log data captured by Fluentd, we provide real-time insights into the performance and health of the Nginx web server.

### Nginx Exporter Dashboard

The Nginx Exporter Dashboard gives a visual representation of critical metrics from the Nginx web server, such as:

- **Processed Connections**: Counts the total number of connections processed by Nginx, including accepted and handled connections.
- **Active Connections**: Shows the number of currently active connections, along with details on connections that are reading, writing, or waiting.
- **Total Requests**: Tracks the total number of HTTP requests that the server has received over time.

This dashboard is essential for detecting performance bottlenecks, understanding user behavior, and ensuring high availability.

### Fluentd Nginx Log Dashboard

- **Latency**: Measures the time taken to process HTTP GET requests. The graph provides percentile distributions (P50, P90, P99) for detailed latency analysis.
- **Traffic**: Displays the rate of HTTP requests over time, broken down by request paths. This helps in identifying the traffic patterns and the most frequently accessed endpoints.
- **Availability**: Represents the percentage of non-error responses (excluding 4xx and 5xx status codes), giving a quick overview of the server's health.

Fluentd collects and aggregates logs from Nginx, and this data is visualized on the Fluentd Nginx Log Dashboard, providing insights into:


Monitoring these metrics is vital for maintaining operational performance and can assist in early detection of irregular patterns that could indicate issues.

### How to Use the Dashboards

To view the dashboards:

1. Ensure that Prometheus and Grafana are running via the Docker Compose setup provided in this project.
2. Access Grafana through `http://grafana.alishazaee.ir` and log in with your credentials. ( You can change this domain in the docker-compose file )
3. Navigate to the dashboard panel to view the Nginx Exporter and Fluentd dashboards.
   
*Note: Replace `alishazaee.ir` with your actual domain name and ensure that the Nginx Exporter and Fluentd are configured correctly to send metrics to Prometheus.*




### Generate Treafik pass
```
echo $(htpasswd -nb user password) | sed -e s/\\$/\\$\\$/g
```
