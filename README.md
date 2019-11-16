# Cakephp Docker

```shell
docker-compose build
```

```shell
docker-compose up -d
```

```shell
docker-compose exec db psql -U postgres
```

```sql
create database my_app;
create database test_myapp;
\q
```

```shell
docker-compose exec php composer create-project --prefer-dist cakephp/app .
```

```shell
docker-compose exec php composer require --dev phpunit/phpunit:"^5.7|^6.0"
```
```php:app.php
<?php

use Cake\Database\Driver\Postgres;
return [
    'Datasources' => [
        'default' => [
            'driver' => Postgres::class,
            'host' => 'db',
            'username' => 'postgres',
            'password' => '',
            'database' => 'my_app',
            'timezone' => 'Asia/Tokyo',
        ],
    ],
];
```
