<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use App\Events\UserProtectController;

class PasienController extends Controller
{
    
    public function homeAction()
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isPasien)
        {
            $this->response->redirect('user/login');
        }
        if($_isDokter)
        {
            $this->response->redirect('dokter/home');
        }
        
    }

    public function listkonsultasiAction()
    {
        $id = $this->session->get('pasien')['id'];
        $konsultasis = Konsultasi::find("idPasien='$id'");
        $data = array();
        
            foreach ($konsultasis as $konsultasi) {
                if($konsultasi->dijawab == 0)
                {
                    $dijawab = "belum";
                }
                else
                {
                    $dokter = Dokter::findFirst("idDokter='$konsultasi->idDokter'");
                    $dijawab = $dokter->nama;
                }
                $data[] = array(
                    'tanggal' => $konsultasi->tanggal,
                    'keluhan' => $konsultasi->keluhan,
                    'dijawab' => $dijawab,
                    'link' => $konsultasi->idKonsultasi,
                );
                    // var_dump($data); die();

            }
            
            $content = json_encode($data);
            return $this->response->setContent($content);
        
    }

    public function createkonsultasiAction()
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isPasien)
        {
            $this->response->redirect('user/login');
        }
        if($_isDokter)
        {
            $this->response->redirect('dokter/home');
        }
        
    }

    public function storekonsultasiAction()
    {
        $id = $this->session->get('pasien')['id'];
        // print($id); die();
        // $pasien = Pasien::find("idPasien='$id'");
        $konsultasi = new Konsultasi();
        $konsultasi->idPasien = $this->session->get('pasien')['id'];
        $konsultasi->tanggal = $this->request->getPost('tanggal');
        $konsultasi->jkel = $this->request->getPost('jkel');
        $konsultasi->usia = $this->request->getPost('usia');
        $konsultasi->keluhan = $this->request->getPost('keluhan');
        $konsultasi->detail = $this->request->getPost('detail');
        $konsultasi->dijawab = 0;
        $konsultasi->save();
        $this->response->redirect('pasien/home');
        
    }

    public function detailAction($id)
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isPasien)
        {
            $this->response->redirect('user/login');
        }
        if($_isDokter)
        {
            $this->response->redirect('dokter/home');
        }
        $konsultasi = Konsultasi::findFirst("idKonsultasi='$id'");
        $this->view->konsultasi = $konsultasi;
        
    }

}