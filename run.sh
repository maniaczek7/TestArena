#!/bin/bash
mysql -e "create database testarena"
mysql < /var/www/html/docs/change_log/testarena_db.sql testarena
