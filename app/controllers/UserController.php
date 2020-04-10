<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use Phalcon\Mvc\Dispatcher;

class UserController extends Controller
{
    
    public function registerAction()
    {
		
    }


    public function storeregisterAction()
    {

        if($this->request->getPost('tipe') == "dokter")
        {
            $dokter = new Dokter();
            $dokter->username = $this->request->getPost('username');
            $dokter->email = $this->request->getPost('email');
            $dokter->nama = $this->request->getPost('nama');
            $dokter->str = $this->request->getPost('str');
            $password = $this->request->getPost('password');
            $dokter->password = $this->security->hash($password);
            $dokter->save();
            $this->response->redirect('user/register');
        }
        elseif($this->request->getPost('tipe') == "pasien")
        {
            $pasien = new Pasien();
            $pasien->username = $this->request->getPost('username');
            $pasien->email = $this->request->getPost('email');
            $pasien->nama = $this->request->getPost('nama');
            $password = $this->request->getPost('password');
            $pasien->password = $this->security->hash($password);
            $pasien->save();
            $this->response->redirect('user/register');
        }
        
    }

}