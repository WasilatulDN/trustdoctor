<?php

use Phalcon\Mvc\Controller;
use Phalcon\Http\Response;
use App\Events\UserProtectController;

class DokterController extends Controller
{
    
    public function homeAction()
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isDokter)
        {
            $this->response->redirect('user/login');
        }
        if($_isPasien)
        {
            $this->response->redirect('pasien/home');
        }
        
    }

    public function listkonsultasidokterAction()
    {
        // $id = $this->session->get('pasien')['id'];
        // $konsultasis = Konsultasi::find("idPasien='$id'");
        // $konsultasis = Konsultasi::find();
        $konsultasis = Konsultasi::find([
            'order' => 'dijawab ASC'
            ]);
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
                    'usia' => $konsultasi->usia,
                    'jkel' => $konsultasi->jkel,
                    'keluhan' => $konsultasi->keluhan,
                    'dijawab' => $dijawab,
                    'link' => $konsultasi->idKonsultasi,
                );
                    // var_dump($data); die();

            }
            
            $content = json_encode($data);
            return $this->response->setContent($content);
        
    }

    public function storereplykonsultasiAction()
    {
        $idDokter = $this->session->get('dokter')['id'];
        $id = $this->request->getPost('idKonsultasi');
        $konsultasi = Konsultasi::findFirst("idKonsultasi='$id'");
        $konsultasi->jawaban = $this->request->getPost('jawaban');
        $konsultasi->idDokter = $idDokter;
        $konsultasi->dijawab = 1;
        $konsultasi->save();
        $this->response->redirect('dokter/home');
        
    }

    public function replykonsultasiAction($id)
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isDokter)
        {
            $this->response->redirect('user/login');
        }
        if($_isPasien)
        {
            $this->response->redirect('pasien/home');
        }
        $konsultasi = Konsultasi::findFirst("idKonsultasi='$id'");
        $this->view->idKonsultasi = $konsultasi->idKonsultasi;
        
    }
    
    public function detailAction($id)
    {
        $_isDokter = $this->session->get('dokter')['tipe'];
        $_isPasien = $this->session->get('pasien')['tipe'];
        if(!$_isDokter)
        {
            $this->response->redirect('user/login');
        }
        if($_isPasien)
        {
            $this->response->redirect('pasien/home');
        }
        $konsultasi = Konsultasi::findFirst("idKonsultasi='$id'");
        $this->view->konsultasi = $konsultasi;

        $pasien = Pasien::findFirst("idPasien='$konsultasi->idPasien'");
        $this->view->pasien = $pasien;
        
    }


}