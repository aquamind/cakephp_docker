CREATE USER my_app WITH PASSWORD 'secret';
CREATE DATABASE my_app;
GRANT ALL PRIVILEGES ON DATABASE my_app TO my_app;
CREATE DATABASE test_myapp;
GRANT ALL PRIVILEGES ON DATABASE test_myapp TO my_app;
