<?php

use Phalcon\Mvc\Model;

class Konsultasi extends Model
{
    public $idKonsultasi;
    public $idPasien;
    public $idDokter;
    public $tanggal;
    public $jkel;
    public $usia;
    public $keluhan;
    public $detail;
    public $dijawab;
    public $jawaban;
}