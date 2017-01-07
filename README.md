ReconSH is a host based monitoring tool that can be used to monitor Linux logs to find active connections, current authenticated users, and failed and successful logins. It’s able to detect failed and successful logins to SSH, telnet, email, and MySQL. ReconSH is meant to be used for quick IR to gain insight to the current status of your host. Future builds will include a centralized component, and session persistence.

System Requirements: 
1. Netcat 
2. Busybox

Usage: sudo watch -c ./recon.sh
