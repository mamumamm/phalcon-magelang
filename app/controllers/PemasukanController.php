<?php

class PemasukanController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }

    public function getAjaxAction()
    {
        if ($this->request->isPost()) {
            $bulan = $this->request->getPost('bulan');
            $dataPemasukanPerhari = new ViewPemasukanPerhari();
            $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
            die(json_encode($json_data));
        }else {
            $dataPemasukanPerhari = new ViewPemasukanPerhari();
            $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
            die(json_encode($json_data));
        }

        // $user = new ViewPemasukanPerhari();
        // $json_data = $user->getDataPemasukan();
        // die(json_encode($json_data));
    }
    public function getViewAction($hari)
    {
        $keu_harian = KeuHarian::find("tanggal='$hari' AND debit!='0'");
        die(json_encode($keu_harian));
    }

    public function filterBulanAction()
    {
        $bulan = $this->request->getPost('bulan');
        $dataPemasukanPerhari = new ViewPemasukanPerhari();
        $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
        die(json_code($json_data));
    }
}

