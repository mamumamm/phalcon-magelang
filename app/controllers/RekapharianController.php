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

    public function getAjaxAction()
    {
        $user = new KeuRab();
        $json_data = $user->getDataRab();
        die(json_encode($json_data));
    }
}

