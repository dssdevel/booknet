<?php

return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=192.168.0.2;dbname=booknet',
    'username' => 'root',
    'password' => 'tm-pass',
    'charset' => 'utf8',

    // Schema cache options (for production environment)
    'enableSchemaCache' => true,
    //'schemaCacheDuration' => 60,
    //'schemaCache' => 'cache',
];
