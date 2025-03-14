#!/bin/bash

# MySQL server details
MYSQL_HOST="your_host"        # Replace with your MySQL host, e.g., "localhost"
MYSQL_USER="your_user"        # Replace with your MySQL username
MYSQL_PASSWORD="your_password" # Replace with your MySQL password

# Function to list databases and sort the output
list_databases() {
    echo "Listing databases:"
    mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | sort
}

# 1. Initial state: List all databases before creating new ones
echo "Initial Databases (sorted):"
list_databases

# 2. Creating multiple databases (you can change the names if needed)
echo "Creating multiple databases..."
mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE db1;"
mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE db2;"
mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE db3;"

# 3. List all databases again after creation of new ones
echo "Databases after creation of db1, db2, db3 (sorted):"
list_databases
