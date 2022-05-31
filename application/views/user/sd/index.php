<!-- Begin Page Content -->
<div class="container-fluid">

  <h1 class="text-center m-5">Daftar Kelas</h1>

  <div class="row">
    <div class="col">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">Kode</th>
            <th scope="col">Pelajaran</th>
            <th scope="col">Kelas</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($pelajaran as $p) : ?>
          <tr>
            <th scope="row"><?= $p['kd_mapel']; ?></th>
            <td><?= $p['pelajaran']; ?></td>
            <td>
              <?php foreach ($kelas as $k) : ?>
              <a href="<?= base_url('user/detailPelajaran/') . $p['id'] . "/" . $k['id'] ?>"
                class="btn btn-sm btn-primary btn-block">kelas
                <?= $k['kelas']; ?></a>
              <?php endforeach; ?>
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