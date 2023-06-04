<?php

class M_Dosen extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function get_dosen(){
        $query = "SELECT * FROM utl_user_dosen";
        return $this->db->query($query)->result();
    }

    function save(){
        $name = $this->input->post("name");
        $nip = $this->input->post("nip");
        $sex = $this->input->post("sex");
        $born = $this->input->post("born");
        $address = $this->input->post("address");
        $email = $this->input->post("email");
        $phone = $this->input->post("phone");
        $study = $this->input->post("study");
        $gelar = $this->input->post("gelar");
        $user = $this->session->userdata("userid");

        $query = "INSERT INTO utl_user_dosen(user_id, name, nip, sex, born, address, email, phone, study, gelar, created_by, created_date )
                                    VALUES ('$nip', '$name', '$nip', '$sex', '$born', '$address', '$email', '$phone', '$study', '$gelar', '$user', now())";
        echo $query;
        $this->db->query($query);

        $data =  array(
            'user_id' => $this->input->post('nip'),
            'name' => $this->input->post('name'),
            'password' => password_hash('123', PASSWORD_DEFAULT),
            'role_id' => 2,
            'android_access' => 0,
            'web_access' => 0,
        );

        return $this->db->insert("utl_user", $data);
    }

    function update(){
        $name = $this->input->post("name");
        $nip = $this->input->post("nim");
        $sex = $this->input->post("sex");
        $born = $this->input->post("born");
        $address = $this->input->post("address");
        $email = $this->input->post("email");
        $phone = $this->input->post("phone");
        $study = $this->input->post("study");
        $gelar = $this->input->post("gelar");
        $user = $this->session->userdata("userid");

        // $query = "INSERT INTO utl_user_dosen(user_id, name, nip, sex, born, address, email, phone, study, gelar, created_by, created_date )
                                    // VALUES ('$nip', '$name', '$nip', '$sex', '$born', '$address', '$email', '$phone', '$study', '$gelar', '$user', now())";
        
        $query = "UPDATE utl_user_dosen SET name = '$name', nip = '$nip', sex = '$sex', born = '$born', address = '$address', 
                    email = '$email', phone = '$phone', study = '$study', gelar = '$gelar' WHERE user_id = '$user'";
        $this->db->query("UPDATE utl_user SET name = '$name' where user_id = '$user'");
        return $this->db->query($query);


        // return $this->db->insert("utl_user", $data);
    }
}