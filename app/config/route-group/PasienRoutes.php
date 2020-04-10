<?php

use Phalcon\Mvc\Router\Group as RouterGroup;

class PasienRoutes extends RouterGroup
{
    public function initialize()
    {
        $this->setPaths([
            'controller' => 'pasien',
        ]);

        $this->setPrefix('/pasien');

        $this->addGet(
            '/home',
            [
                'action' => 'home',
            ]
        );

        $this->addGet(
            '/list-konsultasi',
            [
                'action' => 'listkonsultasi',
            ]
        );

        $this->addGet(
            '/create-konsultasi',
            [
                'action' => 'createkonsultasi',
            ]
        );
        
    }
}