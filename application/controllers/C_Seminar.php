<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Seminar extends CI_Controller
{
    private $menu_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Dosen', 'M_Kerja_Praktek'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Seminar');
        if ($this->menu_access["access"] == "denied") {
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index()
    {
        $data["_datakp"] = $this->M_Kerja_Praktek->get_data("Diterima");
        $this->template->display("seminar/v_index", $data);
    }

    function Pengajuan(){
        $id = $this->input->post("id_kp");
        $tanggal = $this->input->post("tgl_seminar");

        $query = "UPDATE trn_kerja_praktek SET tanggal_seminar = '$tanggal', status_seminar = 'Diajukan Seminar' where id = '$id'";

        
        $this->db->query($query);

        redirect("C_Seminar");
    }

    function Persetujuan(){
        $id = $this->input->post("id_kp2");
        $status_seminar = $this->input->post("status_seminar");
        $komentar_dosen_pembimbing = $this->input->post("komentar_dosen_pembimbing");
        
        $query = "UPDATE trn_kerja_praktek SET status_seminar = '$status_seminar', komentar_dosen_pembimbing = '$komentar_dosen_pembimbing' where id = '$id'";

        
        $this->db->query($query);
        // echo $query;

        redirect("C_Seminar");
    }
}
