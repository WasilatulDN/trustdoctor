<?php

use Phalcon\Config;

return new Config([

    'database' => [
        'adapter' => 'Phalcon\Db\Adapter\Pdo\Postgresql',
        'host' => 'localhost',
        'username' => 'postgres',
        'password' => '123',
        'dbname' => 'trustdoctor'
    ],
    'url' => [
        'baseUrl' => 'http://localhost/trustdoctor/'
    ]
]);