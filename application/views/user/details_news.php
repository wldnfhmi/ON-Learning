<!-- Begin Page Content -->
<div class="container-fluid">


  <div class="row" style=" margin: 20px;">
    <h1 style="color:black; font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;">
      <?= $dnews['title']; ?>
    </h1>
    <div class="col-12 text-center">
      <p align="left">
        <?= date('l, j/m/y | h : i', $dnews['date_post']); ?>
      </p>
      <img src="<?= base_url('assets/img/news/') . $dnews['image']; ?>" class="img-thumbnail img-fluid">
    </div>
  </div>
  <div class="row justify-content-center my-4">
    <div class="col-10">
      <p class="text-justify" style="color: black; font-weight: 500; font-family: sans-serif;">
        <?= $dnews['contents']; ?>
      </p>
      <a href="<?= base_url('user/news'); ?>" class="btn btn-primary">
        &larr; Back
      </a>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->