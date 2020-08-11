/* mysql queries for setting up flarum db */

/* create users */
CREATE USER 'flarum'@'localhost' IDENTIFIED BY 'passflarum';

/* drop db if exists */
DROP DATABASE IF EXISTS flarumdbPROD;

/* create db for flarum user*/
CREATE DATABASE flarumdbPROD;

/* grand permission to the user*/
GRANT ALL ON flarumdbPROD.* TO 'flarum'@'localhost';

/* flush */
FLUSH PRIVILEGES;
