<?php

class ViewPemasukanPerhari extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $Hari;

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
        return 'view_pemasukan_perhari';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPemasukanPerhari[]|ViewPemasukanPerhari
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return ViewPemasukanPerhari
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

    public function getDataPemasukan()
    {
        $requestData = $_REQUEST;
        $requestSearch = strtoupper($requestData['search']['value']);

        $columns = array(
            0 => 'Hari',
            1 => 'Pemasukan',
            
        );

        $sql = "SELECT * FROM ViewPemasukanPerhari";
        $query = $this->modelsManager->executeQuery($sql);
        $totalData = count($query);
        $totalFiltered = $totalData;  
        $no = $requestData['start']+1;
        $start = $requestData['start'];
        $length = $requestData['length'];
        if (!empty($requestSearch)) {
            //function mencari data user
                $sql = "SELECT * FROM ViewPemasukanPerhari WHERE username LIKE '%".$requestSearch."%'";
                $sql.= "OR cabang_id LIKE '%".$requestSearch."%'";
                $sql.= "OR type LIKE '%".$requestSearch."%'";
                $query = $this->modelsManager->executeQuery($sql); 
                $totalFiltered = count($query);
    
                $sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."   LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
                $query = $this->modelsManager->executeQuery($sql); 
            } else {
            //function menampilkan seluruh data
                $sql = "SELECT * FROM ViewPemasukanPerhari limit $start,$length" ;
                $query = $this->modelsManager->executeQuery($sql); 
            }

        $data = array();
        

        foreach ($query as $key => $value) {
            $dataUser = array();
            $dataUser[] = $no;
            $dataUser[] = $value->Hari;
            $dataUser[] = $value->pemasukan;
          

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
