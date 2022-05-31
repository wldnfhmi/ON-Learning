<?php
defined('BASEPATH') or exit('No direct script access allowed');

class adminModel extends CI_Model
{
  public function getAllAcc()
  {
    return $this->db->get('user')->result_array();
  }

  public function getAllAccByRole()
  {
    return $this->db->get_where('user', ['role_id' => 2])->result_array();
  }

  public function countAcc()
  {
    $this->db->count_all('user');
  }

  public function searchAcc()
  {
    $keyword = $this->input->post('keyword', true);
    $this->db->like('name', $keyword);
    $this->db->or_like('email', $keyword);
    return $this->db->get('user')->result_array();
  }

  public function deleteNews($where, $table)
  {
    $this->db->where($where);
    $this->db->delete($table);
  }

  public function deleteUser($where, $table)
  {
    $this->db->where($where);
    $this->db->delete($table);
  }

  public function getAllPost()
  {
    return $this->db->get('post')->result_array();
  }

  public function countPost()
  {
    $this->db->count_all('post');
  }

  public function deletePost($where, $table)
  {
    $this->db->where($where);
    $this->db->delete($table);
  }

  public function getAllNews()
  {
    return $this->db->get('news')->result_array();
  }

  public function getNewsById($id)
  {
    return $this->db->get_where('news', ['id' => $id])->row_array();
  }


  public function getAllMessage()
  {
    return $this->db->get('message')->result_array();
  }

  public function prosesEditNews()
  {
    $data = [
      'title' => $this->input->post('title')
    ];

    $uploadimg = $_FILES['image']['name'];

    if ($uploadimg) {
      $config['allowed_types']        = 'jpeg|jpg|png';
      $config['max_size']             = '2048';
      $config['file_name']            = 'news' . time();
      $config['upload_path']          = './assets/img/news/';

      $this->load->library('upload', $config);

      if ($this->upload->do_upload('image')) {
        $old_image = $data['news']['image'];
        if ($old_image != 'news.jpg') {
          unlink(FCPATH . 'assets/img/news/' . $old_image);
        }

        $new_image = $this->upload->data('file_name');
        $this->db->set('image', $new_image);
      } else {
        echo $this->upload->display_errors();
      }
    }

    $this->db->where('id', $this->input->post('id'));
    $this->db->update('news', $data);
  }

 public function getAllJenjang()
 {
   return $this->db->get('jenjang')->result_array();
 }

 public function getAllKelas()
 {
   return $this->db->get('kelas')->result_array();
 }

 public function getAllMateri()
 {
   return $this->db->get('materi')->result_array();
 }

 public function getAllPelajaran()
 {
   return $this->db->get('pelajaran')->result_array();
 }
 
 public function joinMateri()
 {
   $this->db->select('*');
   $this->db->from('materi');
   $this->db->join('jenjang', 'materi.id_jenjang = jenjang.id');
   $this->db->join('pelajaran', 'materi.id_pelajaran = pelajaran.id');
   $this->db->join('kelas', 'materi.id_kelas = kelas.id');
   return $this->db->get()->result_array();
 }

 public function insertPelajaran()
 {
   $data = [
    'pelajaran' => $this->input->post('pelajaran'),
    'kd_mapel' => $this->input->post('kd_mapel')
    ];

    $this->db->insert('pelajaran', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Berhasil Menambahkan Pelajaran Baru!</div>');
    redirect('admin'); 
 }

 public function deletePelajaran($where, $table)
 {
   $this->db->where($where);
   $this->db->delete($table);
 }

  public function deleteMateri($where, $table)
 {
   $this->db->where($where);
   $this->db->delete($table);
 }
}