<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Mahasiswa extends CI_Controller
{
    private $menu_access;
    private $data_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Mahasiswa'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Mahasiswa');
        if($this->menu_access["access"] == "denied"){
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index(){
        $data["_data"] = $this->M_Mahasiswa->get_data();
        $data["_jurusan"] = $this->M_Mahasiswa->list_jurusan();
        $this->template->display("mahasiswa/v_index", $data);
    }

    function save(){
        // $this->M_Dosen->Save();
        if($this->M_Mahasiswa->Save()){
            redirect("C_Mahasiswa?msg=success");
        } else{
            redirect("C_Mahasiswa?msg=failed");
        }
    }

    function update(){
        if($this->M_Mahasiswa->Save()){
            redirect("C_Mahasiswa?msg=success");
        } else{
            redirect("C_Mahasiswa?msg=failed");
        }
    }

    public function delete()
    {
        $id = decrypt_url($this->input->get("id"));
        $query = "DELETE FROM utl_user_mahasiswa where user_id = '$id'";
        $query2 = "DELETE FROM utl_user where user_id = '$id'";

        $this->db->query($query2);
        $hapus = $this->db->query($query);

        if($hapus){
            redirect("C_Mahasiswa?msg=Mahasiswa Has Been Deleted ");
        }else{
            redirect("C_Mahasiswa?msg=Mahasiswa Failed to Deleted ".$id);
        }
    }
}