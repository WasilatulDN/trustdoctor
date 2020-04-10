<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use App\Events\UserProtectController;

class IndexController extends Controller
{
    
    public function indexAction()
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if($_isDokter)
        {
            $this->response->redirect('dokter/home');
        }
        if($_isPasien)
        {
            $this->response->redirect('pasien/home');
        }
        
    }

}