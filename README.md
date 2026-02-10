# Self-DNS Gateway
> A localized, containerized DNS-over-HTTPS (DoH) privacy gateway.

## 🏗️ Architecture
This project implements a DNS resolution layer designed to bypass ISP-level DNS hijacking and data logging. By encapsulating DNS queries within HTTPS traffic, it ensures network-level privacy and integrity.

* **Deployment:** Docker / Docker-Compose
* **Networking:** DNS-over-HTTPS (DoH)
* **Security:** Shell-automated Firewall (Iptables/UFW) integration

## 🛠️ Key Features
* **Encrypted Resolution:** Routes all local DNS traffic through DoH providers to prevent eavesdropping.
* **Network Sovereignty:** Designed to run on local hardware/home-labs to act as the primary resolver for all network devices Can also be used as an endpoint for VPNs.
* **Automated Hardening:** Includes scripts to configure system-level firewalls, ensuring no DNS leaks occur outside the encrypted tunnel.

## 🚀 Usage
* Copy `.env.example` to `.env`. Ensure that your configuration matches the machine you'll be deploying to.
* Comment out `network_mode: "host"` on `docker-compose.yml::pihole` if deploying on a mac

* Start the gateway

```bash
docker-compose up -d

```
* Post-installation: **Use `127.0.0.1` as your `nameserver` in `/etc/resolv.conf.`**
