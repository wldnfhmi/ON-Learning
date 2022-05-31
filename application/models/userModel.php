<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class userModel extends CI_Model
{
  public function getPost()
  {
    return $this->db->get('post')->result_array();
  }

  public function getPostById($id)
  {
    return $this->db->get_where('post', ['id' => $id])->row_array();
  }
  
  public function insertPost()
  {
    $data = [
      'name' => $this->input->post('name'),
      'image' => $this->input->post('image'),
      'post' => $this->input->post('post'),
      'date_post' => time()
    ];

    $this->db->insert('post', $data);
    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
    Your post success publish!</div>');
    redirect('user');
  }

  public function getCommentByPostId()
  {
    return $this->db->get_where('comment', ['comment_post_id' => $this->uri->segment(3)])->result_array();
  }


  public function getNews()
  {
    return $this->db->get('news')->result_array();
  }

  public function getNewsById($id)
  {
    return $this->db->get_where('news', ['id' => $id])->row_array();
  }
}