printf "\
CREATE USER IF NOT EXISTS '${MYSQL_USER_WORDPRESS}'@'%%' IDENTIFIED BY '${MYSQL_PASSWORD_WORDPRESS}';\n\
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE_WORDPRESS};\n\
GRANT ALL ON \`${MYSQL_DATABASE_WORDPRESS}\`.* TO '${MYSQL_USER_WORDPRESS}'@'%%';\n\

CREATE USER IF NOT EXISTS '${MYSQL_USER_MATOMO}'@'%%' IDENTIFIED BY '${MYSQL_PASSWORD_MATOMO}';\n\
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE_MATOMO};\n\
GRANT ALL ON \`${MYSQL_DATABASE_MATOMO}\`.* TO '${MYSQL_USER_MATOMO}'@'%%';\n\

CREATE USER IF NOT EXISTS '${MYSQL_USER_RESOURCESPACE}'@'%%' IDENTIFIED BY '${MYSQL_PASSWORD_RESOURCESPACE}';\n\
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE_RESOURCESPACE};\n\
GRANT ALL ON \`${MYSQL_DATABASE_RESOURCESPACE}\`.* TO '${MYSQL_USER_RESOURCESPACE}'@'%%';\n\

FLUSH PRIVILEGES;\n\
" | dc exec -T mariadb mysql -p${MYSQL_ROOT_PASSWORD}
