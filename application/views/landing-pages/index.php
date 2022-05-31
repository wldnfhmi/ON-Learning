<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="#">ON-Learning</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item pr-5">
          <a class="nav-link" href="<?= base_url(); ?>">Beranda</a>
        </li>
        <li class="nav-item pr-5">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#tentangModal">Tentang</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Kontak</a>
        </li>
      </ul>
      <span>
        <div class="navbar-text">
          <a href="<?= base_url('autentifikasi'); ?>" class="btn">Login</a>
        </div>
      </span>
    </div>
  </div>
</nav>

<div class="container">

  <?= $this->session->flashdata('pesan'); ?>

  <div class="content1">
    <div class="row">
      <div class="col-6">
        <div class="card">
          <div class="card-header text-center">
            Daftar Sekarang
          </div>
          <div class="card-body">
            <form action="<?= base_url('autentifikasi/registration'); ?>" method="post">
              <div class="form-group">
                <input type="text" class="form-control" id="name" name="name" placeholder="Full Name ..."
                  value="<?= set_value('name'); ?>" autocomplete="off">
                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="alamat" name="alamat" placeholder="City ..."
                  value="<?= set_value('alamat'); ?>" autocomplete="off">
                <?= form_error('alamat', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" id="email" name="email" placeholder="Email Adress ..."
                  value="<?= set_value('email'); ?>">
                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
              </div>
              <div class="form-row">
                <div class="col">
                  <input type="password" class="form-control" id="password1" name="password1" placeholder="Password">
                  <?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="col mb-3">
                  <input type="password" class="form-control" id="password2" name="password2"
                    placeholder="Repeat Password">
                  <?= form_error('password2', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <button type="submit" class="btn btn-warning btn-block">
                  Daftar
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-6">
        <div class="l-col6" style="color: #ffff00;">
          <h1>ON - Learning</h1>
          <p>Tingkatkan prestasi dan kemampuan belajarmu dari mana saja.</p>
          <div class="btn-group" role="group">
            <a href="https://wa.me/081384683590" class="btn btn-success">
              <i class="fab fa-whatsapp"></i>
            </a>
            <a href="mailto: 4s.pein@gmail.com" class="btn btn-warning">
              <i class="fas fa-at"></i>
            </a>
            <a href="https://www.facebook.com/On-Learning-100315075979490" class="btn btn-primary">
              <i class="fab fa-facebook"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>