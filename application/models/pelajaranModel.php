<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pelajaranModel extends CI_Model
{
  public function getPelajaranSD()
  {
    $query = "SELECT * FROM pelajaran WHERE id <= 4";
    return $this->db->query($query)->result_array();
  }

  public function getPelajaranSMP()
  {
    $query = "SELECT * FROM pelajaran WHERE NOT id = 1 AND NOT id =  6 AND NOT id = 7";
    return $this->db->query($query)->result_array();
  }

  public function getPelajaranSMA()
  {
    $query = "SELECT * FROM pelajaran WHERE NOT id = 2 AND NOT id = 5";
    return $this->db->query($query)->result_array();
  }
}