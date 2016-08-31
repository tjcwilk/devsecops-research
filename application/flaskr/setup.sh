sudo apt-get update -y
sudo apt-get install -y python-pip
sudo pip install Flask
sudo apt-get install -y sqlite3
sqlite3 /tmp/flaskr.db < schema.sql
