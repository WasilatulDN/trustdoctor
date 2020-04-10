<?php

$di->set(
    'router',
    function () {
        $router = new \Phalcon\Mvc\Router(false);

        $router->mount(
            new UserRoutes()
        );

        $router->mount(
            new PasienRoutes()
        );

        $router->mount(
            new DokterRoutes()
        );
        
        $router->addGet(
            '/',
            [
                'controller' => 'index',
                'action' => 'index'
            ]
        );

        return $router;
    }
);