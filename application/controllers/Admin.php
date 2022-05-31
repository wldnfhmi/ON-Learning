<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();
    $this->load->model('adminModel', 'admin');
  }

  public function index()
  {
    $data['title'] = 'On-Learning | Dashboard';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['account'] = $this->admin->getAllAccByRole();
    if ($this->input->post('keyword')) {
      $data['account'] = $this->admin->searchAcc();
    }
    $data['total_acc'] = $this->admin->countAcc();
    $data['total_post'] = $this->admin->countPost();
    $data['news'] = $this->admin->getAllNews();
    $data['message'] = $this->admin->getAllMessage();
    $data['post'] = $this->admin->getAllPost();
    $data['jenjang'] = $this->admin->getAllJenjang();
    $data['kelas'] = $this->admin->getAllKelas();
    $data['materi'] = $this->admin->getAllMateri();
    $data['jmateri'] = $this->admin->joinMateri();
    $data['pelajaran'] = $this->admin->getAllPelajaran(); 

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('admin/index', $data);
    $this->load->view('admin/modal', $data);
    $this->load->view('templates/footer');
  }

  public function deletePost($id)
  {
    $where = array('id' => $id);
    $this->admin->deletePost($where, 'post');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Post success deleted!</div>');
    redirect('admin');
  }

  public function deleteUser($id)
  {
    $where = array('id' => $id);
    $this->admin->deleteUser($where, 'user');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    User success deleted!</div>');
    redirect('admin');
  }

  public function insertNews()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    if ($this->input->method() == 'post') {
      $config['upload_path']          = './assets/img/news/';
      $config['allowed_types']        = 'gif|jpg|png|jpeg';
      $config['max_size']             = '2048';
      $config['file_name']            = 'news' . time();

      $this->load->library('upload', $config);

      if (!$this->upload->do_upload('image')) {
        echo $this->upload->display_errors();
      } else {
        $imgnews = $this->upload->data();

        $data = [
          'image' => $imgnews['file_name'],
          'title' => $this->input->post('title'),
          'contents' => $this->input->post('contents'),
          'date_post' => time()
        ];

        $this->db->insert('news', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        News success added!</div>');
        redirect('admin');
      }
    }
  }

  public function deleteNews($id)
  {
    $where = array('id' => $id);
    $this->admin->deleteNews($where, 'news');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    News success deleted!</div>');
    redirect('admin');
  }

  public function prosesEditNews($id)
  {
    $data['title'] = 'On-Learning | Dashboard';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $data['account'] = $this->admin->getAllAccByRole();
    $data['total_acc'] = $this->admin->countAcc();
    $data['total_post'] = $this->admin->countPost();
    $data['news'] = $this->admin->getNewsById($id);
    $data['message'] = $this->admin->getAllMessage();

    $this->form_validation->set_rules('title', 'Title', 'required');

    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header', $data);
      $this->load->view('templates/sidebar', $data);
      $this->load->view('templates/topbar', $data);
      $this->load->view('admin/index', $data);
      $this->load->view('templates/footer');
    } else {
      $this->admin->prosesEditNews();
      $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
      News success updated!</div>');
      redirect('admin');
    }
  }

  public function insertPelajaran()
  {
    $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
    $this->admin->insertPelajaran();
  }

  public function deletePelajaran($id)
  {
    $where = array('id' => $id);
    $this->admin->deletePelajaran($where, 'pelajaran');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Berhasil Menghapus Pelajaran!</div>');
    redirect('admin');
  }

  public function insertMateri()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    if ($this->input->method() == 'post') {
      $config['upload_path']          = './assets/materi/';
      $config['allowed_types']        = 'gif|jpg|png|jpeg|pdf';
      $config['max_size']             = '2048';
      $config['file_name']            = 'pdf' . time();

      $this->load->library('upload', $config);

      if (!$this->upload->do_upload('file')) {
        echo $this->upload->display_errors();
      } else {
        $file = $this->upload->data();

        $data = [
          'id_jenjang' => $this->input->post('jenjang'),
          'id_pelajaran' => $this->input->post('pelajaran'),
          'id_kelas' => $this->input->post('kelas'),
          'materi' => $this->input->post('materi'),
          'file' => $file['file_name']
        ];

        $this->db->insert('materi', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
        Materi Baru Berhasil Ditambahkan!</div>');
        redirect('admin');
      }
    }
  }

  public function deleteMateri($id)
  {
    $where = array('id' => $id);
    $this->admin->deleteMateri($where, 'materi');

    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Materi Berhasil Dihapus!</div>');
    redirect('admin');
  }
}