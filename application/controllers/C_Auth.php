<?php
defined('BASEPATH') || exit('No direct script access allowed');

class C_Auth extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model(array('M_User', 'M_Menu'));
    }

    function index()
    {
        $this->load->view('auth/v_index');
    }

    function login()
    {
        $userid = $this->input->post('user_id');
        $password = $this->input->post('password');

        $user = $this->M_User->get_by_id($userid);

        if (empty($user)) {
            echo json_encode(array('status' => 'failed', 'msg' => 'user not found !!!'));
            return;
        }

        if ($user->is_locked) {
            echo json_encode(array('status' => 'failed', 'msg' => 'locked user, please contact your administrator !!!'));
            return;
        }

        if (password_verify($password, $user->password)) {
            $menu = $this->M_Menu->get_menu_acces($user->role_id);
            $this->session->set_userdata('userid', $user->user_id);
            $this->session->set_userdata('username', $user->name);
            $this->session->set_userdata('role', $user->role_id);
            $this->session->set_userdata('user_image', $user->image);
            $this->session->set_userdata('menu', $menu);
            echo json_encode(array('status' => 'success', 'msg' => 'Successfull to Login'));
            return;
        } else {
            echo json_encode(array('status' => 'failed', 'msg' => 'Your Password is Incorrect !!!'));
            return;
        }
    }

    function log_out()
    {
        $this->session->sess_destroy();
        redirect(base_url('C_Auth'));
    }

    function cek_menu()
    {
        $menu = $this->session->userdata('menu');
        echo json_encode($menu);
    }

    function register()
    {
        $this->load->view('auth/v_register');
    }

    function register_save()
    {

        $password = $this->input->post('password');

        $uppercase = preg_match('@[A-Z]@', $password);
        $lowercase = preg_match('@[a-z]@', $password);
        $number    = preg_match('@[0-9]@', $password);
        $symbol = preg_match('/[\'\/~`\!@#\$%\^&\*\(\)_\-\+=\{\}\[\]\|;:"\<\>,\.\?\\\]/', $password);

        if (!$uppercase || !$lowercase || !$number ||  !$symbol || strlen($password) <= 8) {
            echo json_encode(array('status' => 'error', 'msg' => 'PASSWORD MUST CONSIST OF UPPERCASE, SMALL, NUMBERS AND SYMBOLS !'));
            return;
        }

        try {
            $data =  array(
                'user_id' => $this->input->post('user_id'),
                'name' => $this->input->post('name'),
                'password' => password_hash($password, PASSWORD_DEFAULT),
                'role_id' => $this->input->post('access'),
                'android_access' => 0,
                'web_access' => 0,
            );

            $hasil = $this->M_User->register($data);
            if ($hasil['status'] == 'success') {
                echo json_encode(array('status' => 'success', 'msg' => 'Success To Save Data  !'));
            } else {
                echo json_encode(array('status' => 'error', 'msg' => $hasil['error']['message']));
            }
        } catch (\Exception $th) {
            echo json_encode(array('status' => 'error', 'msg' => $th->getMessage()));
        }

        // var_dump($hasil);

    }
}
