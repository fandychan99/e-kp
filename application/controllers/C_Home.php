<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Home extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_User', 'M_Role'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }
    }

    public function index()
    {       
        $this->template->display('home/v_index');
    }

    public function get_usercomputer(){
        
        $user = get_current_user();
        echo "Nama pengguna saat ini adalah: " . $user;

    }
}