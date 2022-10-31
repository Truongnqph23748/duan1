<?php
class c_hang_hoa{
    public function index() {
        include ("models/m_hang_hoa.php");
        $m_hang_hoa = new m_hang_hoa();
        $hang_hoa = $m_hang_hoa->doc_hang_hoa();
        //mangr du lieu hang hoa
        //gooi duong dan view vaof day
        $view = "views/hang_hoa/v_hang_hoa.php";//duong dan thay doi theo view
        include ("templates/front-end/layout.php");// dong nay luon luon co dinh theo trang
    }
}

