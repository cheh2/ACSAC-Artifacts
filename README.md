# ACSAC-Artifacts
Data artifacts for the ACSAC 2022 paper: From Hindsight to Foresight: Enhancing Design Artifacts for Business Logic Flaw Discovery


## Contents

These artifacts are used in the Results section (Section 4.3) of our paper and contain the (1) use case scenarios from Sylius, (2) generated misuse case scenarios using our approach, and (3) the results of running the generated misuse case scenarios on the latest version of Sylius (and the rolled-back version of Sylius where applicable).  

## Structure

Each folder in our submitted artifacts is labeled with the Issue ID that corresponds to the Table 1 column in the Results section. Inside each folder, there are .feature files (which are the use case scenarios and misuse case scenarios) and .txt files (which contain the results of running the use case scenarios and/or misuse case scenarios). 

The original use case scenario created by Sylius developers are named "Sylius_use_case.feature". The generated misuse case scenarios are named "Our_generated_misuse_case.feature". Where applicable, the original misuse case scenarios created by the Sylius developers are named "Sylius_misuse_case.feature". 
The results of running the collection of use case scenarios and misuse case scenarios on the latest Sylius version are named "Results_Latest_Sylius.txt" and the results on the 2016 Sylius version are named "Results_Old_Sylius.txt".

## How To Run Misuse Cases in Sylius

The following instructions installs [**Sylius**](https://github.com/Sylius/Sylius) on Linux.
Following that are the instructions for running misuse case scenarios on Sylius.

### Install php
`sudo apt-get update`<br />
`sudo apt-get install php`

### Edit php.ini file
1. On the command line execute: `php --ini`
2. Open the file listed as 'Loaded Configuration File': `sudo gedit /etc/php/8.1/cli/php.ini`
3. Edit the following configurations:<br />memory_limit = 1024M<br />date.timezone = Europe/Warsaw

### Install php extensions
`sudo apt-get install php8.1-gd php8.1-exif php8.1-fileinfo php8.1-intl php8.1-curl php8.1-dom`

### Install MySql
`sudo apt install mysql-server`

### Setup MySql database
1. `sudo mysql -u root -p`
2. `create database sylius;`
3. `show databases;`
4. `CREATE USER sylius@localhost IDENTIFIED BY ‘password123’;`
5. `GRANT ALL PRIVILEGES ON sylius.* TO sylius@localhost;`
6. To check if privilege is granted:<br />`use sylius;`<br />`SHOW GRANTS FOR sylius@localhost;`
7. `FLUSH PRIVILEGES;`
8. `exit`

### Download Composer
See [**Composer**](https://getcomposer.org/download/).

### Install MySql driver for php
`sudo apt install php-mysql`

### Setup connection to database
`sudo gedit .env.local`<br />
Add the following lines to the file:<br />
APP_ENV=prod<br />
DATABASE_URL=mysql://sylius:password123@127.0.0.1/sylius

### Install Sylius
`php bin/console sylius:install -e prod`<br /> 
`mysql service restart`

### Change database url in .env
`sudo gedit .env`<br />
Edit the following configuration:<br />DATABASE_URL=mysql://sylius:password123@127.0.0.1/sylius

### To Run Misuse Cases in Sylius

1. Copy Misuse Case Scenario(MUCS) feature file(s) or folder containing MUCS feature files into `/features`.
2. Run command `sudo service mysql restart` in the root folder of Sylius.
3. Run command `vendor/bin/behat` in the root folder of Sylius to test the MUCS feature files(s). This command will test ALL the feature files
contained in '/features'. So all the pre-existing feature files in Sylius should be removed, leaving only the MUCS created by the author.
Alternatively, you can run 'vendor/bin/behat <feature_file_path>' to specify the exact feature file that you want to run.
