<?php
require_once ("database.php");
class m_khach_hang extends database{
    public function doc_khach_hang(){
        $sql = "SELECT * FROM khach_hang";
        $this->setQuery($sql);
        //lay du lieu nhieu dong
        return $this->loadAllRows();
    }
}