<?php

class PemasukanController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }

    public function getAjaxAction()
    {
        $user = new ViewPemasukanPerhari();
        $json_data = $user->getDataPemasukan();
        die(json_encode($json_data));
    }
}

