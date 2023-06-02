<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Role extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }
    }

}