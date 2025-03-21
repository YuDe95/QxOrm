REM -- DEFINE QXORM VERSION FOR DOCKER TAGS --
SET QX_VERSION=1.5.1

REM -- DOCKER LOGIN --
docker login

REM -- DOCKER PUSH TEST QXBLOGRESTAPI --
cd ../docker/test/qxBlogRestApi/
docker push qxorm/ubuntu-with-qxorm-test-qxblogrestapi:%QX_VERSION%
docker push qxorm/ubuntu-with-qxorm-test-qxblogrestapi:latest

REM -- DOCKER PUSH README TEST QXBLOGRESTAPI --
docker pushrm qxorm/ubuntu-with-qxorm-test-qxblogrestapi

REM -- DOCKER PUSH DEV QXBLOGRESTAPI --
docker push qxorm/ubuntu-with-qxorm-dev-qxblogrestapi:%QX_VERSION%
docker push qxorm/ubuntu-with-qxorm-dev-qxblogrestapi:latest

REM -- DOCKER PUSH README DEV QXBLOGRESTAPI --
docker pushrm qxorm/ubuntu-with-qxorm-dev-qxblogrestapi

REM -- DOCKER PUSH QXORM WITH MARIADB --
cd ../../dev/compose_qxorm_with_mariadb/
docker push qxorm/compose_qxorm_with_mariadb-nginx_reverse_proxy:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mariadb-frontend_html_js_css:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mariadb-backend_qxorm:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mariadb-db_mariadb:%QX_VERSION%

docker push qxorm/compose_qxorm_with_mariadb-nginx_reverse_proxy:latest
docker push qxorm/compose_qxorm_with_mariadb-frontend_html_js_css:latest
docker push qxorm/compose_qxorm_with_mariadb-backend_qxorm:latest
docker push qxorm/compose_qxorm_with_mariadb-db_mariadb:latest

REM -- DOCKER PUSH README QXORM WITH MARIADB --
docker pushrm qxorm/compose_qxorm_with_mariadb-nginx_reverse_proxy
docker pushrm qxorm/compose_qxorm_with_mariadb-frontend_html_js_css
docker pushrm qxorm/compose_qxorm_with_mariadb-backend_qxorm
docker pushrm qxorm/compose_qxorm_with_mariadb-db_mariadb

REM -- DOCKER PUSH QXORM WITH MONGODB --
cd ../compose_qxorm_with_mongodb/
docker push qxorm/compose_qxorm_with_mongodb-nginx_reverse_proxy:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mongodb-frontend_html_js_css:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mongodb-backend_qxorm:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mongodb-db_mongodb:%QX_VERSION%

docker push qxorm/compose_qxorm_with_mongodb-nginx_reverse_proxy:latest
docker push qxorm/compose_qxorm_with_mongodb-frontend_html_js_css:latest
docker push qxorm/compose_qxorm_with_mongodb-backend_qxorm:latest
docker push qxorm/compose_qxorm_with_mongodb-db_mongodb:latest

REM -- DOCKER PUSH README QXORM WITH MONGODB --
docker pushrm qxorm/compose_qxorm_with_mongodb-nginx_reverse_proxy
docker pushrm qxorm/compose_qxorm_with_mongodb-frontend_html_js_css
docker pushrm qxorm/compose_qxorm_with_mongodb-backend_qxorm
docker pushrm qxorm/compose_qxorm_with_mongodb-db_mongodb

REM -- DOCKER PUSH QXORM WITH MYSQL --
cd ../compose_qxorm_with_mysql/
docker push qxorm/compose_qxorm_with_mysql-nginx_reverse_proxy:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mysql-frontend_html_js_css:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mysql-backend_qxorm:%QX_VERSION%
docker push qxorm/compose_qxorm_with_mysql-db_mysql:%QX_VERSION%

docker push qxorm/compose_qxorm_with_mysql-nginx_reverse_proxy:latest
docker push qxorm/compose_qxorm_with_mysql-frontend_html_js_css:latest
docker push qxorm/compose_qxorm_with_mysql-backend_qxorm:latest
docker push qxorm/compose_qxorm_with_mysql-db_mysql:latest

REM -- DOCKER PUSH README QXORM WITH MYSQL --
docker pushrm qxorm/compose_qxorm_with_mysql-nginx_reverse_proxy
docker pushrm qxorm/compose_qxorm_with_mysql-frontend_html_js_css
docker pushrm qxorm/compose_qxorm_with_mysql-backend_qxorm
docker pushrm qxorm/compose_qxorm_with_mysql-db_mysql

REM -- DOCKER PUSH QXORM WITH POSTGRESQL --
cd ../compose_qxorm_with_postgresql/
docker push qxorm/compose_qxorm_with_postgresql-nginx_reverse_proxy:%QX_VERSION%
docker push qxorm/compose_qxorm_with_postgresql-frontend_html_js_css:%QX_VERSION%
docker push qxorm/compose_qxorm_with_postgresql-backend_qxorm:%QX_VERSION%
docker push qxorm/compose_qxorm_with_postgresql-db_postgresql:%QX_VERSION%

docker push qxorm/compose_qxorm_with_postgresql-nginx_reverse_proxy:latest
docker push qxorm/compose_qxorm_with_postgresql-frontend_html_js_css:latest
docker push qxorm/compose_qxorm_with_postgresql-backend_qxorm:latest
docker push qxorm/compose_qxorm_with_postgresql-db_postgresql:latest

REM -- DOCKER PUSH README QXORM WITH POSTGRESQL --
docker pushrm qxorm/compose_qxorm_with_postgresql-nginx_reverse_proxy
docker pushrm qxorm/compose_qxorm_with_postgresql-frontend_html_js_css
docker pushrm qxorm/compose_qxorm_with_postgresql-backend_qxorm
docker pushrm qxorm/compose_qxorm_with_postgresql-db_postgresql

REM -- DOCKER PUSH QXORM WITH SQLITE --
cd ../compose_qxorm_with_sqlite/
docker push qxorm/compose_qxorm_with_sqlite-nginx_reverse_proxy:%QX_VERSION%
docker push qxorm/compose_qxorm_with_sqlite-frontend_html_js_css:%QX_VERSION%
docker push qxorm/compose_qxorm_with_sqlite-backend_qxorm:%QX_VERSION%

docker push qxorm/compose_qxorm_with_sqlite-nginx_reverse_proxy:latest
docker push qxorm/compose_qxorm_with_sqlite-frontend_html_js_css:latest
docker push qxorm/compose_qxorm_with_sqlite-backend_qxorm:latest

REM -- DOCKER PUSH README QXORM WITH SQLITE --
docker pushrm qxorm/compose_qxorm_with_sqlite-nginx_reverse_proxy
docker pushrm qxorm/compose_qxorm_with_sqlite-frontend_html_js_css
docker pushrm qxorm/compose_qxorm_with_sqlite-backend_qxorm

pause
