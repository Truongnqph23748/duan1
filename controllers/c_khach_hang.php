<?php
class c_khach_hang{
    public function index() {
        include ("models/m_khach_hang.php");
        $m_khach_hang = new m_khach_hang();
        $m_khach_hang = $m_khach_hang->doc_khach_hang();
        //mangr du lieu hang hoa
        //gooi duong dan view vaof day
        $view = "views/khachhang/v_dangki.php";//duong dan thay doi theo view
        include ("templates/front-end/layout.php");// dong nay luon luon co dinh theo trang
    }
}
