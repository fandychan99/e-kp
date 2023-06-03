<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Kerja_Praktek extends CI_Controller
{
    private $menu_access;
    private $data_access;
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_Menu', 'M_Role', 'M_Mahasiswa', 'M_Dosen', 'M_Kerja_Praktek'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_Kerja_Praktek');
        if($this->menu_access["access"] == "denied"){
            redirect('C_Home?msg=you are not entitled to access the Appointmen menu !!!');
        }
        $this->data_access = $this->menu_access["data"];
    }

    function index(){
        $data["_dataaju"] = $this->M_Kerja_Praktek->get_data('Diajukan');
        $data["_dataterima"] = $this->M_Kerja_Praktek->get_data('Diterima');
        $data["_datatolak"] = $this->M_Kerja_Praktek->get_data('Ditolak');
        $data["_dosen"] = $this->M_Dosen->get_dosen();
        $this->template->display("kerja/v_index", $data);
    }

    function Save_Pendaftaran(){
       
        if( $this->M_Kerja_Praktek->Save_Pendaftaran()){
            redirect("C_Kerja_Praktek?msg=success");
        } else{
            redirect("C_Kerja_Praktek?msg=failed");
        }
    }

    function terima_kp(){
        $id = decrypt_url($this->input->get("id"));
        $query = "UPDATE trn_kerja_praktek SET status = 'Diterima' WHERE id = '$id'";

        $this->db->query($query);

        redirect("C_Kerja_Praktek");
    }

    public function Tolak_Pendaftaran(){
        $id = $this->input->post("id_kp");
        $alasan = $this->input->post("keterangan");
        $user = $this->session->userdata("userid");

        $query = "UPDATE trn_kerja_praktek SET status = 'Ditolak', komentar_koordinator = '$alasan', cek_koordinator_by = '$user' WHERE id = '$id'";

        $this->db->query($query);

        redirect("C_Kerja_Praktek");
    }

    public function Set_Dosen(){
        $id = $this->input->post("id_kp2");
        $dosen = $this->input->post("dosen");
        $user = $this->session->userdata("userid");

        $query = "UPDATE trn_kerja_praktek SET  dosen_pembimbing = '$dosen' WHERE id = '$id'";

        $this->db->query($query);

        redirect("C_Kerja_Praktek");
    }

    public function delete()
    {
        $id = decrypt_url($this->input->get("id"));
        $query = "DELETE FROM trn_kerja_praktek where id = '$id'";
        $hapus = $this->db->query($query);

        if($hapus){
            redirect("C_Kerja_Praktek?msg=Mahasiswa Has Been Deleted ");
        }else{
            redirect("C_Kerja_Praktek?msg=Mahasiswa Failed to Deleted ".$id);
        }
    }
}