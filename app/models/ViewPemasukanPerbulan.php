<?php

class ViewPemasukanPerbulan extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     * @Column(type="string", length=7, nullable=true)
     */
    public $Bulan;

    /**
     *
     * @var double
     * @Column(type="double", length=32, nullable=true)
     */
    public $pemasukan;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("qodr");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'view_pemasukan_perbulan';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPemasukanPerbulan[]|ViewPemasukanPerbulan
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPemasukanPerbulan
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    public function getDataPemasukan($bulan)
    {
        $requestData = $_REQUEST;
        $requestSearch = strtoupper($requestData['search']['value']);

        $columns = array(
            0 => 'Hari',
            1 => 'Pemasukan',
            
        );

        $sql = "SELECT * FROM ViewPemasukanPerbulan";
        $query = $this->modelsManager->executeQuery($sql);
        $totalData = count($query);
        $totalFiltered = $totalData;  
        $no = $requestData['start']+1;
        $start = $requestData['start'];
        $length = $requestData['length'];
        if (!empty($requestSearch)) {
            //function mencari data user
                $sql = "SELECT * FROM ViewPemasukanPerbulan WHERE Bulan LIKE '%".$requestSearch."%'";
                $sql.= "OR Bulan LIKE '%".$requestSearch."%'";
                $sql.= "OR pemasukan LIKE '%".$requestSearch."%'";
                $query = $this->modelsManager->executeQuery($sql); 
                $totalFiltered = count($query);
    
                $sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."   LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
                $query = $this->modelsManager->executeQuery($sql); 
            } else {
            //function menampilkan seluruh data
                if (!$bulan) {
                    $sql = "SELECT * FROM ViewPemasukanPerbulan limit $start,$length" ;
                    $query = $this->modelsManager->executeQuery($sql); 
                }else {
                    $sql = "SELECT * FROM ViewPemasukanPerbulan WHERE month(tanggal)='$bulan' limit $start,$length" ;
                    $query = $this->modelsManager->executeQuery($sql); 
                }
            }

        $data = array();
        

        foreach ($query as $key => $value) {
            $dataUser = array();
            $dataUser[] = $no;
            $dataUser[] = $value->Bulan;
            $dataUser[] = $value->pemasukan;
            $dataUser[] ='
            <button type="button" id="btn-view" class="btn btn-warning" data-toggle="modal" data-target="#modal-default" 
            onclick="return show_data_pemasukan(\''.$value->Bulan.'\');">View</button>
            ';
          

            $data[] = $dataUser;
            $no++;
        }

                
        $json_data = array(
			"draw"            => intval( $requestData['draw'] ),  
			"recordsTotal"    => intval( $totalData ),
			"recordsFiltered" => intval( $totalFiltered ), 
			"data"            => $data
		);
        
        return $json_data; 
    }

    public function getDataGraphic()
    {
       
        $sql = "SELECT ViewPemasukan.*, ViewPengeluaran.* FROM ViewPemasukanPerbulan ViewPemasukan, 
        ViewPengeluaranPerbulan ViewPengeluaran WHERE ViewPemasukan.Bulan=ViewPengeluaran.Bulan Limit 15";
        $query = $this->modelsManager->executeQuery($sql);
        $data = array();
        
        foreach ($query as $key => $value) {
            $dataUser = array();
            // $tanggal = str_replace(' ','',$value->tanggal_cair);
            $dataUser['Tanggal'] = $value->ViewPemasukan->Hari;
            $dataUser['Pemasukan'] = $value->ViewPemasukan->pemasukan;
            $dataUser['Pengeluaran'] = $value->ViewPengeluaran->Pengeluaran;
            $data[] = $dataUser;
        }
        
        return $data; 
    }

}
