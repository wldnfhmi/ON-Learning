<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelasModel extends CI_Model
{
  public function getKelasSD()
  {
    $query = "SELECT * FROM kelas WHERE id <= 6";
    return $this->db->query($query)->result_array();
  }

  public function getKelasSMP()
  {
    $query = "SELECT * FROM kelas WHERE id <= 9 AND id > 6";
    return $this->db->query($query)->result_array();
  }

  public function getKelasSMA()
  {
    $query = "SELECT * FROM kelas WHERE id >= 10";
    return $this->db->query($query)->result_array();
  }
}