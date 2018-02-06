<?php
use Phalcon\Mvc\view;
class GraphicController extends \Phalcon\Mvc\Controller
{
    public function indexAction()
    {
        $this->view->pick("grafik/index");
    }
    public function getGraphicAction()
    {
        $data = new ViewPemasukanPerhari();
        $json_data = $data->getDataGraphic();
        die(json_encode($json_data));
    }

    public function getGraphicPerbulanAction()
    {
        $data = new ViewPemasukanPerbulan();
        $json_data = $data->getDataGraphic();
        die(json_encode($json_data));
    }
}
