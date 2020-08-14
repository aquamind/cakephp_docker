# Cakephp Docker

```shell
docker-compose build
```

```shell
docker-compose up -d
```

```shell
docker-compose exec php composer create-project --prefer-dist "cakephp/app:4.*" .
```

```shell
docker-compose exec php composer require --dev phpunit/phpunit:"^5.7|^6.0"
```

```php:app.php
use Cake\Database\Driver\Postgres;
return [
    'Datasources' => [
        'default' => [
            'className' => Connection::class,
            'driver' => Postgres::class,,
            'persistent' => false,
            'timezone' => 'Asia/Tokyo',
```

```php:app_local.php
    'Datasources' => [
        'default' => [
            'host' => 'db',
```
