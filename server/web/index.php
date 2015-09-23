<?php

use Silex\Application;

require_once __DIR__ . '/../vendor/autoload.php';

error_reporting(E_ALL);
ini_set('display_errors', 'on');

$app = new Application([
    'debug' => true,
]);

$app->get('/comments', function (Application $app) {
    return json_encode([
        [
            'author' => 'foo',
            'body' => 'bar',
        ],
    ]);
});


Stack\Run(
    (new Stack\Builder())
        ->push(Asm89\Stack\Cors::class, [
            // you can use array('*') to allow any headers
            'allowedHeaders'      => array('*'),
            // you can use array('*') to allow any methods
            'allowedMethods'      => array('*'),
            // you can use array('*') to allow requests from any origin
            'allowedOrigins'      => array('*'),
            'exposedHeaders'      => false,
            'maxAge'              => false,
            'supportsCredentials' => false,
        ])
        ->resolve($app)
);
