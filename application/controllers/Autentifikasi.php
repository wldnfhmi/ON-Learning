<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Autentifikasi extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
  }
  public function index()
  {
    if ($this->session->userdata('email')) {
      redirect('user');
    }

    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
    $this->form_validation->set_rules('password', 'Password', 'required|trim');
    if ($this->form_validation->run() == false) {
      $data['title'] = 'On-Learning | Login Page';
      $this->load->view('templates/aute_header', $data);
      $this->load->view('autentifikasi/login');
      $this->load->view('templates/aute_footer');
    } else {
      // validation success
      $this->_login();
    }
  }

  private function _login()
  {
    $email = $this->input->post('email');
    $password = $this->input->post('password');

    $user = $this->db->get_where('user', ['email' => $email])->row_array();

    // User available
    if ($user) {
      // User is active
      if ($user['is_active'] == 1) {
        // Check password
        if (password_verify($password, $user['password'])) {
          $data = [
            'email' => $user['email'],
            'role_id' => $user['role_id']
          ];
          $this->session->set_userdata($data);
          if ($user['role_id'] == 1) {
            redirect('admin');
          } else {

            redirect('user');
          }
        } else {
          $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
          Email not registered!</div>');
          redirect('autentifikasi');
        }
      }
    }
  }
  public function registration()
  {
    if ($this->session->userdata('email')) {
      redirect('user');
    }

    $this->form_validation->set_rules('name', 'Name', 'required|trim');
    $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
      'is_unique' => 'This email has already registered!'
    ]);
    $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
      'matches' => 'Password dont match!',
      'min_length' => 'Password too short!'
    ]);
    $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'On-Learning | Landing Pages';

      $this->load->view('templates/landing-pages/header', $data);
      $this->load->view('landing-pages/index', $data);
      $this->load->view('templates/landing-pages/modal', $data);
      $this->load->view('templates/landing-pages/footer');
    } else {
      $email = $this->input->post('email', true);
      $data = [
        'name' => htmlspecialchars($this->input->post('name', true)),
        'alamat' => htmlspecialchars($this->input->post('alamat', true)),
        'email' => htmlspecialchars($email),
        'image' => 'default.jpg',
        'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
        'role_id' => 2,
        'is_active' => 0,
        'date_created' => time()
      ];

      // Token
      $token = base64_encode(openssl_random_pseudo_bytes(32));
      $user_token = [
        'email' => $email,
        'token' => $token,
        'date_created' => time()
      ];

      $this->db->insert('user', $data);
      $this->db->insert('user_token', $user_token);

      $this->_sendEmail($token, 'verify');

      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
      Congratulations! Your account has been created successfully. Activation your account!
      </div>');
      redirect('autentifikasi');
    }
  }

  private function _sendEmail($token, $type)
  {
    $config = [
      'protocol' => 'smtp',
      'smtp_host' => 'ssl://smtp.googlemail.com',
      'smtp_user' => '4s.pein@gmail.com',
      'smtp_pass' => 'qwe@sdzxc1',
      'smtp_port' => 465,
      'mailtype' => 'html',
      'charset' => 'utf-8',
      'newline' => "\r\n"
    ];

    $this->load->library('email', $config);
    $this->email->initialize($config);

    $this->email->from('4s.pein@gmail.com', 'On-Learning');
    $this->email->to($this->input->post('email'));

    if ($type == 'verify') {
      $this->email->subject('Email Verification');
      $this->email->message('Click this link to verify your account : <a href="' . base_url() . 'autentifikasi/verify?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Activate</a>');
    } else if ($type == 'forgot') {
      $this->email->subject('Reset Password');
      $this->email->message('Click this link to reset your password : <a href="' . base_url() . 'autentifikasi/resetpassword?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Reset Password</a>');
    }

    if ($this->email->send()) {
      return true;
    } else {
      echo $this->email->print_debugger();
      die;
    }
  }

  public function verify()
  {
    $email = $this->input->get('email');
    $token = $this->input->get('token');

    $user = $this->db->get_where('user', ['email' => $email])->row_array();

    if ($user) {

      $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();

      if ($user_token) {
        if (time() - $user_token['date_created'] < (60 * 60 * 24)) {
          $this->db->set('is_active', 1);
          $this->db->where('email', $email);
          $this->db->update('user');

          $this->db->delete('user_token', ['email' => $email]);

          $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">' . $email . ' has been activated! Please Login.</div>');
          redirect('autentifikasi');
        } else {

          $this->db->delete('user', ['email' => $email]);
          $this->db->delete('user_token', ['email' => $email]);

          $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account Activation Failed! Token Expired.</div>');
          redirect('autentifikasi');
        }
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account Activation Failed! Wrong Token.</div>');
        redirect('autentifikasi');
      }
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account Activation Failed! Wrong Email.</div>');
      redirect('autentifikasi');
    }
  }

  public function logout()
  {
    $this->session->unset_userdata('email');
    $this->session->unset_userdata('role_id');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logged out!</div>');
    redirect('autentifikasi');
  }

  public function block()
  {
    $data['title'] = 'On-Learning | Access Block';
    $this->load->view('autentifikasi/block', $data);
  }

  public function forgotPassword()
  {
    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');

    if ($this->form_validation->run() == false) {
      $data['title'] = 'On-Learning | Forgot Password';
      $this->load->view('templates/aute_header', $data);
      $this->load->view('autentifikasi/forgot-password');
      $this->load->view('templates/aute_footer');
    } else {
      $email = $this->input->post('email');
      $user = $this->db->get_where('user', ['email' => $email, 'is_active' => 1])->row_array();

      if ($user) {
        $token = base64_encode(openssl_random_pseudo_bytes(32));
    
        $user_token = [
          'email' => $email,
          'token' => $token,
          'date_created' => time()
        ];

        $this->db->insert('user_token', $user_token);
        $this->_sendEmail($token, 'forgot');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Please check your email to reset your password!</div>');
        redirect('autentifikasi');
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email is not registered or activated!</div>');
        redirect('autentifikasi/forgotpassword');
      }
    }
  }

  public function resetpassword()
  {
    $email = $this->input->get('email');
    $token = $this->input->get('token');

    $user = $this->db->get_where('user', ['email' => $email])->row_array();
    
    if($user) {
      $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();

      if($user_token) {
        $this->session->set_userdata('reset_email', $email);
        $this->changePassword();
        
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Reset Password failed! Wrong token.</div>');
        redirect('autentifikasi');
      }
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Reset Password failed! Wrong email.</div>');
      redirect('autentifikasi');
    } 
  }

  public function changePassword()
  {
    if(!$this->session->userdata('reset_email')) {
      redirect('autentifikasi');
    }
    
    $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]');
    $this->form_validation->set_rules('password2', 'Password', 'required|trim|min_length[3]|matches[password1]');
    if($this->form_validation->run() == false) {      
      $data['title'] = 'On-Learning | Change Password';
      $this->load->view('templates/aute_header', $data);
      $this->load->view('autentifikasi/change-password');
      $this->load->view('templates/aute_footer');
    } else {
      $password = password_hash($this->input->post('password1'), PASSWORD_DEFAULT);
      $email = $this->session->userdata('reset_email');

      $this->db->set('password', $password);
      $this->db->where('email', $email);
      $this->db->update('user');

      $this->session->unset_userdata('reset_email');

      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password has been changes! Please login.</div>');
      redirect('autentifikasi');
    }
  }
}