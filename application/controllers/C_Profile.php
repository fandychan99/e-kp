<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Profile extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_User', 'M_Profile', 'M_Mahasiswa', 'M_Dosen'));
        $this->load->library('upload');
        $this->load->helper('url');
        $this->load->helper('form');

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Profile');
        if ($this->menu_access["access"] == "denied") {
            redirect('C_Home?msg=you are not entitled to access the Profile menu !!!');
        }

        $this->role = $this->session->userdata('role');
    }

    function index()
    {
        $data["data_user"] = $this->M_User->get_profile($this->session->userdata('userid'));
        if ($this->role != 4) {
            $this->template->display("profile/v_index_dosen", $data);
        } else {
            $data["_jurusan"] = $this->M_Mahasiswa->list_jurusan();
            $this->template->display("profile/v_index_mahasiswa", $data);
        }
    }

    public function do_upload()
    {
        $config['upload_path'] = './assets/images/user/'; // Tentukan direktori penyimpanan gambar
        $config['allowed_types'] = 'jpg|jpeg|png|gif'; // Jenis file yang diizinkan
        // $config['max_size'] = 2048; // Batasan ukuran file (dalam kilobyte)

        $this->upload->initialize($config);

        if (!$this->upload->do_upload('file')) {
            // Jika upload gagal, tampilkan pesan error
            $error = $this->upload->display_errors();
            echo $error;
        } else {
            // Jika upload berhasil, dapatkan informasi file yang diunggah
            $data = $this->upload->data();
            $data_simpan = array(
                "image" => $data['file_name']
            );
            
            $this->session->set_userdata('user_image', $data['file_name']);

            if ($this->M_Profile->update_data_general($data_simpan)) {
                redirect("C_Profile?msg=success");
            } else {
                redirect("C_Profile?msg=failed");
            }
        }
    }

    function Update_Dosen(){
        // $this->M_Dosen->update();
        if($this->M_Dosen->update()){
            redirect("C_Profile?msg=success");
        } else{
            redirect("C_Profile?msg=failed");
        }
    }

    function Update_Mahasiswa(){
        // $this->M_Mahasiswa->update();
        if($this->M_Mahasiswa->update()){
            redirect("C_Profile?msg=success");
        } else{
            redirect("C_Profile?msg=failed");
        }
    }
}
