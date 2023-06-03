<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Bimbingan extends CI_Controller
{
    private $menu_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Dosen', 'M_Kerja_Praktek', 'M_Bimbingan'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Bimbingan');
        if($this->menu_access["access"] == "denied"){
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index(){
        // if($this->session->userdata('role') == 4){
        //     $data["_lstbimbingan"] = $this->M_Bimbingan->get_data_bimbingan($this->session->userdata("userid"));
        //     $this->template->display("bimbingan/v_index_mhs");
        // }else{
            $data["_datakp"] = $this->M_Kerja_Praktek->get_data("Diterima");
            $this->template->display("bimbingan/v_index_dosen", $data);
        // }
    }

    function dtl_bim(){
        $id = decrypt_url($this->input->get("id"));
        $data["_datakp"] = $this->M_Kerja_Praktek->get_data_kp($id);
        $data["_lstbimbingan"] = $this->M_Bimbingan->get_data_bimbingan($id);
        $this->template->display("bimbingan/v_detail_dosen", $data);
    }

    function save(){
        $id=decrypt_url($this->input->post("id_kp"));
        if( $this->M_Bimbingan->Save()){
            redirect("C_Bimbingan/dtl_bim?id=$id&msg=success");
        } else{
            redirect("C_Bimbingan/dtl_bim?id=$id&msg=failed");
        }
    }

    
    public function delete()
    {
        $id = decrypt_url($this->input->get("id"));
        $query = "DELETE FROM trn_bimbingan where id = '$id'";
       
     
        $hapus = $this->db->query($query);

        if($hapus){
            redirect("C_Bimbingan?msg=Bimbingan Has Been Deleted ");
        }else{
            redirect("C_Bimbingan?msg=Bimbingan Failed to Deleted ".$id);
        }
    }

}