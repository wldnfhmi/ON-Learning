<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="row">
    <div class="col">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th colspan="2">Materi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1;
          foreach ($materi as $m) : ?>
          <tr>
            <th scope="row"><?= $i++; ?></th>
            <td><?= $m['materi']; ?></td>
            <td>
              <a href="<?= base_url('user/detailMateriSMP/') . $m['id'] ?>"
                class="btn btn-sm btn-primary btn-block">Baca</a>
            </td>
          </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->