/* mysql queries for setting up flarum db */

/* create users */
CREATE USER 'flarum'@'localhost' IDENTIFIED BY 'passflarum';

/* drop db if exists */
DROP DATABASE IF EXISTS flarumdb;

/* create db for flarum user*/
CREATE DATABASE flarumdb;

/* grand permission to the user*/
GRANT ALL ON flarumdb.* TO 'flarum'@'localhost';

/* flush */
FLUSH PRIVILEGES;
