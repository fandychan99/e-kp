<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Dosen extends CI_Controller
{
    private $menu_access;
    private $data_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Dosen'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Dosen');
        if($this->menu_access["access"] == "denied"){
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index(){
        $data["_data"] = $this->M_Dosen->get_dosen();
        $this->template->display("dosen/v_index", $data);
    }

    function save(){
        // $this->M_Dosen->Save();
        if($this->M_Dosen->Save()){
            redirect("C_Dosen?msg=success");
        } else{
            redirect("C_Dosen?msg=failed");
        }
    }

    function update(){
        if($this->M_Dosen->Save()){
            redirect("C_Dosen?msg=success");
        } else{
            redirect("C_Dosen?msg=failed");
        }
    }

    public function delete()
    {
        $id = decrypt_url($this->input->get("id"));
        $query = "DELETE FROM utl_user_dosen where user_id = '$id'";
        $query2 = "DELETE FROM utl_user where user_id = '$id'";

        $this->db->query($query2);
        $hapus = $this->db->query($query);

        if($hapus){
            redirect("C_Dosen?msg=Dosen Has Been Deleted ");
        }else{
            redirect("C_Dosen?msg=Dosen Failed to Deleted ".$id);
        }
    }
}