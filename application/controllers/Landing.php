<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
    $data['title'] = 'On-Learning | Landing Pages';

    $this->load->view('templates/landing-pages/header', $data);
    $this->load->view('landing-pages/index', $data);
    $this->load->view('templates/landing-pages/modal', $data);
    $this->load->view('templates/landing-pages/footer');
  }
}