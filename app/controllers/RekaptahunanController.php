<?php

class RekaptahunanController extends \Phalcon\Mvc\Controller
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
            $dataPemasukanPerhari = new ViewPemasukanPertahun();
            $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
            die(json_encode($json_data));
        }else {
            $dataPemasukanPerhari = new ViewPemasukanPertahun();
            $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
            die(json_encode($json_data));
        }
        
        // $user = new ViewPemasukanPerhari();
        // $json_data = $user->getDataPemasukan();
        // die(json_encode($json_data));
    }
    
    public function getViewPemasukanAction($tahun)
    {
        $keu_harian = KeuHarian::find("tanggal='$tahun' AND debit!='0'");
        die(json_encode($keu_harian));
    }

    // PENGELUARAN
    public function getAjaxPengeluaranAction()
    {
        $user = new ViewPengeluaranPertahun();
        $json_data = $user->getDataPengeluaran();
        die(json_encode($json_data));
    }

    public function getViewPengeluaranAction($tahun)
    {
        $keu_harian = KeuHarian::find("tanggal='$tahun'");
        die(json_encode($keu_harian));
    }

    // PENGHASILAN
    public function getAjaxPenghasilanAction()
    {
        $user = new ViewPerkiraanPemasukanTahun();
        $json_data = $user->getDataPenghasilan();
        die(json_encode($json_data));
    }

    public function getViewPenghasilanAction($tahun_cair)
    {
        $tahun_cair = str_replace(' ','',$tahun_cair);       
        $keu_harian = KeuPerkiraanPemasukan::find("tgl_perkiraan='$tahun_cair'");
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

