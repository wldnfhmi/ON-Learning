<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="card p-3">
    <div class="card-header">
      <div class="row">
        <div class="col-2 py-4">
          <img src="<?= base_url('assets/img/profile/') . $post['image']; ?>" class="img-thumbnail" width="150px">
        </div>
        <div class="col-10 py-4">
          <h5><?= $post['name']; ?></h5>
          <p class="text-justify"><?= $post['post']; ?></p>
        </div>
      </div>
    </div>
    <div class="card-body">
      <?php foreach ($comment as $c) : ?>
      <div class="row justify-content-end">
        <div class="col-2 pt-1 px-2">
          <img src="<?= base_url('assets/img/profile/') . $c['comment_image']; ?>" width="70px"
            class="img-thumbnail rounded-circle">
        </div>
        <div class="col-8 p-1">
          <div class="card p-2">
            <h5><?= $c['comment_name']; ?></h5>
            <p style="margin: -13px; padding-left: 13px; padding-bottom: 25px; text-align:justify;">
              <?= date('d F Y', $c['comment_time']); ?>
            </p>
            <p><?= $c['comment_content']; ?></p>
          </div>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
    <div class="card-footer pt-4" style="background-color: #fff;">
      <form action="<?= base_url('user/sendComment'); ?>" method="post">
        <div class="row">
          <div class="col-10">
            <div class="form-group">
              <input type="hidden" class="form-control" id="id" name="id">
            </div>
            <div class="form-group">
              <input type="hidden" class="form-control" id="comment_name" name="comment_name"
                value="<?= $user['name']; ?>">
            </div>
            <div class="form-group">
              <input type="hidden" class="form-control" id="comment_image" name="comment_image"
                value="<?= $user['image']; ?>">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="comment_content" name="comment_content"
                placeholder="Type something ...">
            </div>
            <div class="form-group">
              <input type="hidden" class="form-control" id="post_id" name="post_id" value="<?= $post['id']; ?>">
            </div>
          </div>
          <div class="col-2 pt-3">
            <button role="submit" class="btn btn-sm btn-primary">Send</button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <a href="<?= base_url('user'); ?>" class="btn btn-primary my-4">
    &larr;Back
  </a>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->