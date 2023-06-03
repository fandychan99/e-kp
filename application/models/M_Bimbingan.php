<?php

class M_Bimbingan extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_data_bimbingan($id){
        $query = "SELECT * FROM trn_bimbingan where id_kp = '$id'";
        return $this->db->query($query)->result();
    }

    function Save(){
        $id_kp = $this->input->post("id_kp");
        $tanggal_bimbingan = $this->input->post("tanggal_bimbingan");
        $komentar = $this->input->post("komentar");
        $created_by = $this->session->userdata('userid');
        $created_date = date("Y-m-d H:i:s");

        $query = "INSERT INTO trn_bimbingan (id_kp, tanggal_bimbingan, komentar, created_by, created_date) VALUES ('$id_kp','$tanggal_bimbingan','$komentar','$created_by','$created_date') ";

        return $this->db->query($query);
    }
}