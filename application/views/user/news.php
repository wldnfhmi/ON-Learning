<style>
.card li a:hover {
  color: #ff0000;
}
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="row mt-5">
    <div class="col text-center">
      <h5 class="btn btn-danger btn-block">News</h5>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-8">
      <?php foreach($news as $n) : ?>
      <div class="card mb-3">
        <img src=" <?=base_url('assets/img/news/') . $n['image']; ?>" class="card-img-top">
        <div class="img-text">
          <p style="float: right;" class="text-muted mr-2"><?= date('d F Y', $n['date_post']); ?></p>
        </div>
        <div class="card-body">
          <h5 class="card-title"><?= $n['title']; ?></h5>
          <a href="<?= base_url('user/detailsNews/') . $n['id']; ?>" class="btn btn-primary detail">See detail</a>
        </div>
      </div>
      <?php endforeach; ?>
    </div>

    <div class="col-sm-4">
      <div class="card p-4">
        <h5 class="pt-2 text-center">List News</h5>
        <hr>
        <?php foreach($news as $n) : ?>
        <li>
          <a href="<?= base_url('user/detailsNews/') . $n['id']; ?>"><?= $n['title']; ?></a>
        </li>
        <?php endforeach; ?>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->