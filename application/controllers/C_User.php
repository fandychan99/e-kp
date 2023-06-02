<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_User extends CI_Controller
{
    private $menu_access;

    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_User', 'M_Role'));

        if (!$this->session->userdata('userid')) {
            redirect('C_Auth');
        }

        $this->menu_access = $this->user_access->get_access('C_User');
        if($this->menu_access["access"] == "denied"){
            redirect('C_Home?msg=you are not entitled to access the User menu  !!!');
        }    
    }

    public function index()
    {
        $id = $this->input->get("id");
        $data["userby"] = $this->M_User->get_by_id(decrypt_url($id));
        $data['_role'] = $this->M_Role->get_role_for_select();
        $data['_user'] = $this->M_User->get_all();
        
        $this->template->display('user/v_index', $data);
    }

    public function add()
    {
        $password = $this->input->post('password');

        $uppercase = preg_match('@[A-Z]@', $password);
        $lowercase = preg_match('@[a-z]@', $password);
        $number    = preg_match('@[0-9]@', $password);
        $symbol = preg_match('/[\'\/~`\!@#\$%\^&\*\(\)_\-\+=\{\}\[\]\|;:"\<\>,\.\?\\\]/', $password);

        if (!$uppercase || !$lowercase || !$number ||  !$symbol || strlen($password) <= 8) {
            echo json_encode(array('status' => 'error', 'msg' => 'PASSWORD HARUS TERDIRI DARI HURUF BESAR, KECIL, ANGKA DAN SYMBOL !'));
            return;
        } 

        $andro =  $this->input->post('andro') == null ? 0 : 1;
        $web =  $this->input->post('web') == null ? 0 : 1;

        try {
            $data =  array(
                'user_id' => $this->input->post('user_id'),
                'name' => $this->input->post('name'),
                'password' => password_hash($password, PASSWORD_DEFAULT),
                'role_id' => $this->input->post('role'),
                'android_access' => $andro,
                'web_access' => $web,
            );
    
            $hasil = $this->M_User->register($data);
            if($hasil['status'] == 'success'){
                echo json_encode(array('status' => 'success', 'msg' => 'Berhasil Simpan Data !'));
            }
            else{
                echo json_encode(array('status' => 'error', 'msg' => $hasil['error']['message']));
            }
        } catch (\Exception $th) {
            echo json_encode(array('status' => 'error', 'msg' => $th->getMessage() ));
        }
        
        // var_dump($hasil);
    }

    public function edit()
    {
        try {
            $data =  array(
                'user_id' => $this->input->post('user_id'),
                'name' => $this->input->post('name'),
                'role_id' => $this->input->post('role'),
                'updated_by' => $this->session->userdata("userid")
            );
    
            $hasil = $this->M_User->edit($data,  $this->input->post('user_id'));
            if($hasil['status'] == 'success'){
                echo json_encode(array('status' => 'success', 'msg' => 'Berhasil Update Data !'));
            }
            else{
                echo json_encode(array('status' => 'error', 'msg' => $hasil['error']['message']));
            }
        } catch (\Exception $th) {
            echo json_encode(array('status' => 'error', 'msg' => $th->getMessage() ));
        }
    }

    public function delete()
    {
        $id = decrypt_url($this->input->get("id"));
        $query = "DELETE FROM utl_user where user_id = '$id'";

        // return $this->db->query($query);
        $hapus = $this->db->query($query);

        if($hapus){
            redirect("C_User?msg=USer Has Been Deleted ");
        }else{
            redirect("C_User?msg=User Failed to Deleted ".$id);
        }
    }
}
