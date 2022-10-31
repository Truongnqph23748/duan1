<?php
require_once ("database.php");
class m_hang_hoa extends database{
    public function doc_hang_hoa(){
        $sql = "SELECT * FROM hang_hoa";
        $this->setQuery($sql);
        //lay du lieu nhieu dong
        return $this->loadAllRows();
    }
}