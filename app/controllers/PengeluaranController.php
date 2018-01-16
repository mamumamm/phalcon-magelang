<?php

class PengeluaranController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {

    }

    public function getAjaxAction()
    {
        $user = new ViewPengeluaranPerhari();
        $json_data = $user->getDataPengeluaran();
        die(json_encode($json_data));
    }
}

