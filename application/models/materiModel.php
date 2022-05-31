<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class materiModel extends CI_Model
{
  public function getMateriSD($id)
  {    
    $id = $this->uri->segment(3);
    $kelas = $this->uri->segment(4);
    $query = "SELECT * FROM materi WHERE id_pelajaran = $id AND id_kelas = $kelas";
    return $this->db->query($query)->result_array();
  }

  public function getMateriSDById($id)
  {
    $id = $this->uri->segment(3);
    $query = "SELECT * FROM materi WHERE id = $id";
    return $this->db->query($query)->row_array();
  }

  public function getMateriSMP($id)
  {
    $id = $this->uri->segment(3);
    $kelas = $this->uri->segment(4);
    $query = "SELECT * FROM materi WHERE id_pelajaran = $id AND id_kelas = $kelas";
    return $this->db->query($query)->result_array();
  }

  public function getMateriSMPById($id)
  {
    $id = $this->uri->segment(3);
    $query = "SELECT * FROM materi WHERE id = $id";
    return $this->db->query($query)->row_array();
  }

  public function getMateriSMA($id)
  {
    $id = $this->uri->segment(3);
    $kelas = $this->uri->segment(4);
    $query = "SELECT * FROM materi WHERE id_pelajaran = $id AND id_kelas = $kelas";
    return $this->db->query($query)->result_array();
  }

  public function getMateriSMAById($id)
  {
    $id = $this->uri->segment(3);
    $query = "SELECT * FROM materi WHERE id = $id";
    return $this->db->query($query)->row_array();
  }
}