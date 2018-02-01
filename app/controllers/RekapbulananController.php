<?php

class RekapbulananController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        if (!$this->session->has('auth')) {
            $this->response->redirect('login');
        }

        // $data_user = User::find("");
        // $this->view->data_user = $data_user;
    }

    // PENGELUARAN
    public function getAjaxPengeluaranAction()
    {
        $user = new ViewPengeluaranPerbulan();
        $json_data = $user->getDataPengeluaran();
        die(json_encode($json_data));
    }

    public function getViewPengeluaranAction($bulan)
    {
        $keu_harian = KeuHarian::find("tanggal='$bulan'");
        die(json_encode($keu_harian));
    }

     // PEMASUKAN
     public function getAjaxPemasukanAction()
     {
         if ($this->request->isPost()) {
             $bulan = $this->request->getPost('bulan');
             $dataPemasukanPerhari = new ViewPemasukanPerbulan();
             $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
             die(json_encode($json_data));
         }else {
             $dataPemasukanPerhari = new ViewPemasukanPerbulan();
             $json_data = $dataPemasukanPerhari->getDataPemasukan($bulan);
             die(json_encode($json_data));
         }
         
         // $user = new ViewPemasukanPerbulan();
         // $json_data = $user->getDataPemasukan();
         // die(json_encode($json_data));
     }
     
     public function getViewPemasukanAction($bulan)
     {
         $keu_harian = KeuHarian::find("tanggal='$bulan' AND debit!='0'");
         die(json_encode($keu_harian));
     }

     // PENGHASILAN
    public function getAjaxPenghasilanAction()
    {
        $user = new ViewPerkiraanPemasukanBulan();
        $json_data = $user->getDataPenghasilan();
        die(json_encode($json_data));
    }

    public function getViewPenghasilanAction($bulan_cair)
    {
        $bulan_cair = str_replace(' ','',$bulan_cair);       
        $keu_harian = KeuPerkiraanPemasukan::find("tgl_perkiraan='$bulan_cair'");
        die(json_encode($keu_harian));
    }

}

