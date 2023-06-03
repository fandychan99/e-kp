<?php

class M_Mahasiswa extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_data(){
        $query = "SELECT * FROM utl_user_mahasiswa";
        return $this->db->query($query)->result();
    }

    function save(){
        $name = $this->input->post("name");
        $nip = $this->input->post("nim");
        $sex = $this->input->post("sex");
        $born = $this->input->post("born");
        $address = $this->input->post("address");
        $email = $this->input->post("email");
        $phone = $this->input->post("phone");
        $jurusan = $this->input->post("jurursan");
        $user = $this->session->userdata("userid");

        $query = "INSERT INTO utl_user_mahasiswa(user_id, name, nim, sex, born, address, email, phone, jurusan, created_by, created_date )
                                    VALUES ('$nip', '$name', '$nip', '$sex', '$born', '$address', '$email', '$phone', '$jurusan', '$user', now())";
        echo $query;
        $this->db->query($query);

        $data =  array(
            'user_id' => $this->input->post('nim'),
            'name' => $this->input->post('name'),
            'password' => password_hash('123', PASSWORD_DEFAULT),
            'role_id' => 4,
            'android_access' => 0,
            'web_access' => 0,
        );

        return $this->db->insert("utl_user", $data);
    }

    function list_jurusan(){
        $this->db->select('id, name');
        $this->db->from("utl_jurusan");
        return $this->db->get()->result();

    }
}