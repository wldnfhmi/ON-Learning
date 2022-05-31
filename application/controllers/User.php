<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in(); 
    $this->load->model('userModel', 'user');
  }
  
  public function index()
  {
    $data['title'] = 'On-Learning | Home';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['post'] = $this->user->getPost(); 

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/index', $data);
    $this->load->view('templates/footer');
  }

  public function profile()
  {
    $data['title'] = 'On-Learning | My Profile';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/profile', $data);
    $this->load->view('templates/footer');
  }

  public function editProfile()
  {
    $data['title'] = 'On-Learning | My Profile';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('name', 'Name', 'required|trim');

    if($this->form_validation->run() == false) {      
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('templates/topbar', $data);
      $this->load->view('user/profile', $data);
      $this->load->view('templates/footer');
    } else {
      $name = $this->input->post('name');
      $email = $this->input->post('email');

      // Jika ada img yang akan di upload
      $uploadimg = $_FILES['image']['name'];

      if($uploadimg) {
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = '2048';
        $config['upload_path']          = './assets/img/profile/';
        $config['file_name']            = 'profile' . time();

        $this->load->library('upload', $config);

        if($this->upload->do_upload('image')) {
          $old_image = $data['user']['image'];
          if($old_image != 'defaul.jpg') {
            unlink(FCPATH . 'assets/img/profile/' . $old_image);
          }
          
          $new_image = $this->upload->data('file_name');
          $this->db->set('image', $new_image);
        } else {
          echo $this->upload->display_errors();
        }
      }

      $this->db->set('name', $name);
      $this->db->where('email', $email);
      $this->db->update('user');
      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
      Your profile success updated!</div>');
      redirect('user/profile');
    }
  }

  public function changesPassword()
  {
    $data['title'] = 'On-Learning | Changes Password';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('currentpassword', 'Current Password', 'required|trim');
    $this->form_validation->set_rules('newpassword1', 'New Password', 'required|trim|min_length[3]|matches[newpassword2]');
    $this->form_validation->set_rules('newpassword2', 'Repeat Password', 'required|trim|matches[newpassword1]');
    
    if($this->form_validation->run() == false) {      
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('templates/topbar', $data);
      $this->load->view('user/changespassword', $data);
      $this->load->view('templates/footer');
    } else {
      $current_password = $this->input->post('currentpassword');
      $new_password = $this->input->post('newpassword1');
      if(!password_verify($current_password, $data['user']['password'])) {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
        Your current password wrong!</div>');
        redirect('user/changespassword');
      } else {
        if($current_password == $new_password) {
          $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
          Your password cannot be the same as current!</div>');
          redirect('user/changespassword');
        } else {
          // Password nya ok
          $password_hash = password_hash($new_password, PASSWORD_DEFAULT);
          
          $this->db->set('password', $password_hash);
          $this->db->where('email', $this->session->userdata('email'));
          $this->db->update('user');
          $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
          Your password changes!</div>');
          redirect('user/changespassword');
        }
      }
    }
  }  

  public function post()
  {
    $data['title'] = 'On-Learning | Home';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['post'] = $this->user->getPost(); 
 
    $this->form_validation->set_rules('post', 'Postingan', 'required', [
      'required' => 'This form cannot be empty!'
    ]);
    if($this->form_validation->run() == false) {      
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('templates/topbar', $data);
      $this->load->view('user/index', $data);
      $this->load->view('templates/footer');
    } else {
      $this->user->insertPost();      
    }
  }

  public function detailPost($id)
  {
    $data['title'] = 'On-Learning | Komentar';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['post'] = $this->user->getPostById($id);
    $data['comment'] = $this->user->getCommentByPostId();
    
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/detail_post', $data);
    $this->load->view('templates/footer');

  }

  public function sendComment()
  {
    $data = [
      'comment_name' => $this->input->post('comment_name'),
      'comment_image' => $this->input->post('comment_image'),
      'comment_content' => $this->input->post('comment_content'),
      'comment_time' => time(),
      'comment_post_id' => $this->input->post('post_id')
    ];

    $this->db->insert('comment', $data);
    redirect('user');
  }

  public function news()
  {
    $data['title'] = 'On-Learning | News';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['news'] = $this->user->getNews();
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/news', $data);
    $this->load->view('templates/footer');
    
  }

  public function detailsNews($id)
  {
    $data['title'] = 'On-Learning | Details News';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['dnews'] = $this->user->getNewsById($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/details_news', $data);
    $this->load->view('templates/footer');
  }

  public function critique()
  {
    $data['title'] = 'On-Learning | Critique & Suggest';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/critique', $data);
    $this->load->view('templates/footer');

  }

  public function insertCritique()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('nik', 'NIK', 'required|min_length[16]|max_length[16]|numeric', [
      'required' => 'This NIK cannot be empty!',
      'min_length' => 'This NIK too short!',
      'max_length' => 'NIK must contain 16 digits!',
      'numeric' => 'Nik must contain numbers!'
    ]);
    
    $this->form_validation->set_rules('status', 'Status Jabatan', 'required', [
      'required' => 'This status cannot be empty!'
    ]);
    
    $this->form_validation->set_rules('message', 'Message', 'required|trim', [
      'required' => 'This message cannot be empty!'
    ]);

    if($this->form_validation->run() == false) {
      $data['title'] = 'On-Learning | Critique & Suggest';
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('templates/topbar', $data);
      $this->load->view('user/critique', $data);
      $this->load->view('templates/footer');
    } else {
      if($this->input->method() == 'post') {
        $config['upload_path']          = './assets/img/message/';
        $config['allowed_types']        = 'pdf|jpg|png|jpeg';
        $config['max_size']             = '2048';
  
        $this->load->library('upload', $config);
  
        if(!$this->upload->do_upload('file')) {
          echo $this->upload->display_errors();
        } else {
          $imgfile = $this->upload->data();
  
          $data = [
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email'),
            'nik' => $this->input->post('nik'),
            'status' => $this->input->post('status'),
            'message' => $this->input->post('message'),
            'attach' => $imgfile['file_name'],
            'date_message' => time()
          ];
  
          $this->db->insert('message', $data);
          $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
          Your message was sent successfully!</div>');
          redirect('user/insertCritique');
        }
      }
    }
  }

  # Func Materi

  public function sd()
  {
    $data['title'] = 'On-Learning | Sekolah Dasar';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['pelajaran'] = $this->pelajaranModel->getPelajaranSD();
    $data['kelas'] = $this->kelasModel->getKelasSD();
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sd/index', $data);
    $this->load->view('templates/footer'); 
  }

  public function detailPelajaran($id)
  {
    $data['title'] = 'On-Learning | Detail Pelajaran';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSD($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sd/detail-pelajaran', $data);
    $this->load->view('templates/footer'); 
  }

  public function detailMateri($id)
  {
    $data['title'] = 'On-Learning | Detail Materi';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSDById($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sd/detail-materi', $data);
    $this->load->view('templates/footer'); 
  }

  public function smp()
  {
    $data['title'] = 'On-Learning | Sekolah Menengah Pertama';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['pelajaran'] = $this->pelajaranModel->getPelajaranSMA();
    $data['kelas'] = $this->kelasModel->getKelasSMA();
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/index', $data);
    $this->load->view('templates/footer');
  }

  public function detailPelajaranSMP($id)
  {
    $data['title'] = 'On-Learning | Detail Pelajaran';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSMA($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/detail-pelajaran', $data);
    $this->load->view('templates/footer'); 
  }

  public function detailMateriSMP($id)
  {
    $data['title'] = 'On-Learning | Detail Materi';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSMAById($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/detail-materi', $data);
    $this->load->view('templates/footer'); 
  }

  public function sma()
  {
    $data['title'] = 'On-Learning | Sekolah Menengah Atas';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['pelajaran'] = $this->pelajaranModel->getPelajaranSMA();
    $data['kelas'] = $this->kelasModel->getKelasSMA();
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/index', $data);
    $this->load->view('templates/footer');
  }

  public function detailPelajaranSMA($id)
  {
    $data['title'] = 'On-Learning | Detail Pelajaran';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSMP($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/detail-pelajaran', $data);
    $this->load->view('templates/footer'); 
  }

  public function detailMateriSMA($id)
  {
    $data['title'] = 'On-Learning | Detail Materi';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['materi'] = $this->materiModel->getMateriSMPById($id);
 
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('user/sma/detail-materi', $data);
    $this->load->view('templates/footer'); 
  }
}