<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Hasil_Kerja extends CI_Controller
{
    private $menu_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Dosen', 'M_Kerja_Praktek'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Hasil_Kerja');
        if ($this->menu_access["access"] == "denied") {
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index()
    {
        $data["_datakp"] = $this->M_Kerja_Praktek->get_data("Diterima", "Seminar Disetujui");
        $this->template->display("hasil/v_index", $data);
    }

    function Penilaian(){
        $id = $this->input->post("id_kp");
        $nilai = $this->input->post("nilai");

        $query = "UPDATE trn_kerja_praktek SET nilai_akhir = '$nilai' where id = '$id'";

        
        $this->db->query($query);

        redirect("C_Hasil_Kerja");
    }
}
