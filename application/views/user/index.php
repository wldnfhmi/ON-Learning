<!-- Begin Page Content -->
<div class="container-fluid">


  <?= $this->session->flashdata('message'); ?>

  <div class="card">
    <div class="row py-3">
      <div class="col-2 pl-5">
        <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" class="rounded-circle img-thumbnail"
          width="70px">
      </div>
      <div class="col-10 pr-5">
        <h5 class="mb-3"><?= $user['name']; ?></h5>
        <form action="<?= base_url('user/post'); ?>" method="post">
          <div class="form-group">
            <input type="hidden" class="form-control" id="name" name="name" value="<?= $user['name']; ?>">
          </div>
          <div class="form-group">
            <input type="hidden" class="form-control" id="image" name="image" value="<?= $user['image']; ?>">
          </div>
          <div class="form-group">

            <?= form_error('post', '<small class="text-danger pl-3">', '</small>'); ?>
            <textarea class="form-control" id="post" name="post" rows="3" placeholder="Type something ..."></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Send
            <i class="fas fa-paper-plane pl-1"></i>
          </button>
        </form>
      </div>
    </div>
  </div>

  <?php foreach ($post as $p) : ?>

  <div class="row mt-5">
    <div class="col-2 pl-5">
      <img src="<?= base_url('assets/img/profile/') . $p['image']; ?>" class="rounded-circle img-thumbnail"
        width="70px">
    </div>
    <div class="col-10 pr-5">
      <h5><?= $p['name']; ?></h5>
      <p class="text-muted"><?= date('d F Y', $p['date_post']); ?> <i class="far fa-clock pl-1"></i></p>
      <p class="text-justify" style="font-weight: 600;"><?= $p['post']; ?></p>
    </div>
  </div>
  <div class="row justify-content-end">
    <div class="col-10 mb-5">
      <a href="<?= base_url('user/detailPost/') . $p['id']; ?>" class="btn btn-primary">Komentar</a>
    </div>
  </div>

  <?php endforeach; ?>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->