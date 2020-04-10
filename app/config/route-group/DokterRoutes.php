<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class DokterRoutes extends RouterGroup
{
    public function initialize()
    {
        $this->setPaths([
            'controller' => 'dokter',
        ]);

        $this->setPrefix('/dokter');

        $this->addGet(
            '/home',
            [
                'action' => 'home',
            ]
        );

        $this->addGet(
            '/list-konsultasi',
            [
                'action' => 'listkonsultasidokter',
            ]
        );

        $this->addPost(
            '/store-replykonsultasi',
            [
                'action' => 'storereplykonsultasi',
            ]
        );

        $this->addGet(
            '/reply-konsultasi/{id}',
            [
                'action' => 'replykonsultasi',
            ]
        );
        
        $this->addGet(
            '/detail/{id}',
            [
                'action' => 'detail',
            ]
        );

    }
}