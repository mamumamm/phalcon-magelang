<?php

class ViewPengeluaranPertahun extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     * @Column(type="string", length=4, nullable=true)
     */
    public $Tahun;

    /**
     *
     * @var double
     * @Column(type="double", length=32, nullable=true)
     */
    public $Pengeluaran;

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
        return 'view_pengeluaran_pertahun';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPengeluaranPertahun[]|ViewPengeluaranPertahun
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPengeluaranPertahun
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    public function getDataPengeluaran()
    {
        $requestData = $_REQUEST;
        $requestSearch = strtoupper($requestData['search']['value']);

        $columns = array(
            0 => 'Tahun',
            1 => 'Pengeluaran',
            
        );

        $sql = "SELECT * FROM ViewPengeluaranPertahun";
        $query = $this->modelsManager->executeQuery($sql);
        $totalData = count($query);
        $totalFiltered = $totalData;  
        $no = $requestData['start']+1;
        $start = $requestData['start'];
        $length = $requestData['length'];
        if (!empty($requestSearch)) {
            //function mencari data user
                $sql = "SELECT * FROM ViewPengeluaranPertahun WHERE Tahun LIKE '%".$requestSearch."%'";
                $sql.= "OR Tahun LIKE '%".$requestSearch."%'";
                $sql.= "OR Pengeluaran LIKE '%".$requestSearch."%'";
                $query = $this->modelsManager->executeQuery($sql); 
                $totalFiltered = count($query);
    
                $sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."   LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
                $query = $this->modelsManager->executeQuery($sql); 
            } else {
            //function menampilkan seluruh data
                $sql = "SELECT * FROM ViewPengeluaranPertahun limit $start,$length" ;
                $query = $this->modelsManager->executeQuery($sql); 
            }

        $data = array();
        

        foreach ($query as $key => $value) {
            $dataUser = array();
            $dataUser[] = $no;
            $dataUser[] = $value->Tahun;
            $dataUser[] = $value->Pengeluaran;
            $dataUser[] ='
            <button type="button" id="btn-view" class="btn btn-warning" data-toggle="modal" data-target="#modal-default" 
            onclick="return show_data_pengeluaran(\''.$value->Tahun.'\');">View</button>
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

}
