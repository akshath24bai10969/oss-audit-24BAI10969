# Open Source Software Capstone Audit

**Student Name:** Akshath Sharma  
**Roll Number:** 24BAI10969  
**Chosen Software:** LibreOffice  

## Overview
This repository contains a suite of five Bash shell scripts developed as part of a comprehensive Capstone Audit of an open-source software project. These scripts demonstrate practical CLI-based Linux system administration, system querying, dependency auditing, and log analysis.

## Description of Scripts
* Script 1 (System Identity Report): Queries the OS distribution, active kernel, current user, and uptime, while displaying the governing GNU GPL license.
* Script 2 (FOSS Package Inspector): A diagnostic tool that uses dpkg and apt to verify LibreOffice's installation, extracts maintainer metadata, and utilizes a case statement to summarize FOSS philosophies.
* Script 3 (Disk and Permission Auditor): Utilizes arrays and a for loop to audit the disk space usage, ownership, and strict file permissions of core system directories (e.g., /etc, /var/log) and the LibreOffice configuration folder.
* Script 4 (Log File Analyzer): Accepts command-line arguments to scan system logs (e.g., /var/log/dpkg.log) to count keyword occurrences. Includes a simulated do-while retry loop to handle missing files.
* Script 5 (Open Source Manifesto Generator): An interactive script that captures CLI user input via read -p, concatenates strings, and uses file redirection (> and >>) to generate a .txt file.

## Environment Setup & Dependency Installation
Assume a clean Linux environment. To run these scripts, the following dependencies must be present on the host system:
1. A Debian/Ubuntu-based Linux distribution (or Windows Subsystem for Linux running Ubuntu).
2. Standard Linux coreutils (grep, awk, cut, du, cat).
3. The libreoffice package. To install this dependency via the command line, run:

    sudo apt update
    sudo apt install libreoffice

## Configuration & Execution
These scripts are fully executable via the command line and require no GUI-based setup.

1. Clone this repository to your local Linux machine:
```bash
git clone https://github.com/Akshath-Sharma/oss-audit-24BAI10969.git
```
2. Navigate into the root directory of the repository:
```bash
cd oss-audit-24BAI10969
```
3. Grant execution permissions to the scripts using chmod:
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```
4. Execute the scripts directly from the terminal (Example for script1):
```bash
./script1.sh
```
*(Note: Script 4 requires command-line arguments to function.)* 
```bash
./script4.sh /var/log/dpkg.log installed
```
