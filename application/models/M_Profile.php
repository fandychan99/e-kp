<?php

class M_Profile extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->role = $this->session->userdata('role');
    }

    function get_profile($id)
    {

        $user_id = $this->db->query("SELECT * FROM trn_appointment where id = $id")->row();
        // var_dump($user_id);
        if ($this->role == 2) {
            $query = "SELECT * FROM vw_user_patient where user_id = '$user_id->patient'";
        } else {
            $query = "SELECT * FROM vw_user_doctor where user_id = '$user_id->doctor'";
        }

        // echo $query;

        return $this->db->query($query);
    }

    function get_profile_user($id)
    {

        // $user_id = $this->db->query("SELECT * FROM trn_appointment where id = $id")->row();
        // var_dump($user_id);
        if ($this->role == 2) {
            $query = "SELECT * FROM vw_user_patient where user_id = '$id'";
        } else {
            $query = "SELECT * FROM vw_user_doctor where user_id = '$id'";
        }

        // echo $query;

        return $this->db->query($query);
    }

    function simpan_data($data)
    {
        return $this->db->insert($data);
    }

    function update_data($data)
    {
        if ($this->role == 2) {
            $this->db->where("user_id", $this->session->userdata('userid'));

            return $this->db->update("utl_user_doctor", $data);
        } else {
            $this->db->where("user_id", $this->session->userdata('userid'));
            return $this->db->update("utl_user_patient", $data);
        }
    }

    function update_data_general($data)
    {
        $nama = $data["name"];
        $image = $data["image"];
        $id = $this->session->userdata("userid");
        $query = "UPDATE utl_user SET name = '$nama', image = '$image' , updated_by = '$id', updated_date = now() WHERE user_id = '$id' ";

        return $this->db->query($query);
    }

    function get_chart($userid)
    {
        $query = "SELECT * FROM utl_user_patient_history where user_id = '$userid' ";
        $data = $this->db->query($query)->result_array();
        $hr = array();
        $bp = array();
        $cl = array();
        $bg = array();
        $isi_chart = array();

        foreach ($data as $r) {
            $hr[] = $r["heartrate"];
            $bp[] = $r["bloodpressure"];
            $cl[] = $r["cholesterol"];
            $bg[] = $r["bloodglucose"];
            // if ($hr == "") {
            //     $hr = $r["heartrate"];
            //     $bp = $r["bloodpressure"];
            //     $cl = $r["cholesterol"];
            //     $bg = $r["bloodglucose"];
            // } else {
            //     $hr = $hr . "," . $r["heartrate"];
            //     $bp = $bp . "," . $r["bloodpressure"];
            //     $cl = $cl . "," . $r["cholesterol"];
            //     $bg = $bg . "," . $r["bloodglucose"];
            // }
        }

        $isi_chart = array(
            "heartrate" => $hr,
            "bloodpressure" => $bp,
            "cholesterol" => $cl,
            "bloodglucose" => $bg
        );

        return $isi_chart;
    }
}
