<?php

class M_Kerja_Praktek extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_data($status, $st = "")
    {
        $where = "";
        $user = $this->session->userdata('userid');

        if ($this->session->userdata('role') == 4) {
            
            $where = " AND created_by = '$user' ";
        }

        if ($this->session->userdata('role') == 2) {
            $where = " AND dosen_pembimbing = '$user' ";
        }

        if($st != ""){
            $where =  $where." AND status_seminar = '$st'";
        }
        $query = "SELECT * FROM vw_kerja_praktek WHERE  status = '$status' $where ";
        // echo $query;
        return $this->db->query($query)->result();
    }

    function get_data_kp($id)
    {
        $query = "SELECT * FROM vw_kerja_praktek WHERE  id = '$id' ";
        return $this->db->query($query)->row();
    }

    function Save_Pendaftaran()
    {
        $lokasi = $this->input->post("lokasi");
        $tgl_mulai = $this->input->post("tgl_mulai");
        $tgl_akhir = $this->input->post("tgl_akhir");
        $keterangan = $this->input->post("keterangan");
        $status = "Diajukan";
        $created_by = $this->session->userdata("userid");
        $created_date = date("Y-m-d");

        $query = "INSERT INTO trn_kerja_praktek ( lokasi, tgl_mulai, tgl_akhir, keterangan, status, created_by, created_date) VALUES
                            ('$lokasi', '$tgl_mulai', '$tgl_akhir', '$keterangan', '$status', '$created_by', '$created_date')";

        return $this->db->query($query);
    }
}
