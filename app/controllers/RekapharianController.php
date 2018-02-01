<?php

class RekapharianController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        if (!$this->session->has('auth')) {
            $this->response->redirect('login');
        }

        // $data_user = User::find("");
        // $this->view->data_user = $data_user;
    }

    // RAB
    public function getAjaxAction()
    {
        $user = new KeuRab();
        $json_data = $user->getDataRab();
        die(json_encode($json_data));
    }

    // PEMASUKAN
    public function getAjaxPemasukanAction()
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
    
    public function getViewPemasukanAction($hari)
    {
        $keu_harian = KeuHarian::find("tanggal='$hari' AND debit!='0'");
        die(json_encode($keu_harian));
    }

    // PENGELUARAN
    public function getAjaxPengeluaranAction()
    {
        $user = new ViewPengeluaranPerhari();
        $json_data = $user->getDataPengeluaran();
        die(json_encode($json_data));
    }

    public function getViewPengeluaranAction($hari)
    {
        $keu_harian = KeuHarian::find("tanggal='$hari'");
        die(json_encode($keu_harian));
    }

    // PENGHASILAN
    public function getAjaxPenghasilanAction()
    {
        $user = new ViewPerkiraanPemasukanTanggal();
        $json_data = $user->getDataPenghasilan();
        die(json_encode($json_data));
    }

    public function getViewPenghasilanAction($tanggal_cair)
    {
        $tanggal_cair = str_replace(' ','',$tanggal_cair);       
        $keu_harian = KeuPerkiraanPemasukan::find("tgl_perkiraan='$tanggal_cair'");
        die(json_encode($keu_harian));
    }

    // FILTER
    public function filterBulanAction()
    {
        $bulan = $this->request->getPost('bulan');
        $dataPemasukanPerhari = new ViewPemasukanPerhari();
        $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
        die(json_code($json_data));
    }
}

