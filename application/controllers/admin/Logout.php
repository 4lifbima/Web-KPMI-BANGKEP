<?php
class Logout extends CI_Controller{
    function __construct(){
        parent:: __construct();
        $this->load->model('m_login');
    }
    function index(){
        $this->load->view('admin/v_login');
    }
    function logout(){
        $this->session->sess_destroy();
        $url=base_url('admin/login');
        redirect($url);
    }
}
