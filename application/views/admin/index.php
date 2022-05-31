<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="row my-5">
    <div class="col-sm-3 pb-3">
      <div class="card border-left-warning shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-warning text-uppercase">
                Registered Account</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('user'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-warning pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-primary shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-primary text-uppercase">
                User Post</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('post'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fab fa-ioxhost fa-2x text-primary pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-success shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-success text-uppercase">
                News</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('news'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-newspaper fa-2x text-success pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-danger shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-danger text-uppercase">
                Messages</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('message'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-inbox fa-2x text-danger pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="row my-5">
    <div class="col-sm-3 pb-3">
      <div class="card border-left-warning shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-warning text-uppercase">
                Level</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('jenjang'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-graduation-cap fa-2x text-warning pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-primary shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-primary text-uppercase">
                Lesson</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('pelajaran'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-book fa-2x text-primary pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-success shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-success text-uppercase">
                Class</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('kelas'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-school fa-2x text-success pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-3 pb-3">
      <div class="card border-left-danger shadow h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <p class="text-xs font-weight-bold text-danger text-uppercase">
                Theory</p>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $this->db->count_all('materi'); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-globe fa-2x text-danger pr-2"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?= $this->session->flashdata('message'); ?>


  <!-- Scroll Tabel bag1 -->

  <div class="row">
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-users mr-2"></i>User
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Adress</th>
              <th>Email</th>
              <th>Role</th>
              <th>Join</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
            foreach ($account as $acc) : ?>
            <tr>
              <td><?= $i++; ?></td>
              <td><?= $acc['name']; ?></td>
              <td><?= $acc['alamat']; ?></td>
              <td><?= $acc['email']; ?></td>
              <td><?= $acc['role_id']; ?></td>
              <td><?= date('d F Y', $acc['date_created']); ?></td>
              <td>
                <a href="<?= base_url('admin/deleteUser/') . $acc['id']; ?>" class="btn btn-danger btn-sm"
                  onclick="return confirm('Are you sure want to delete this account?');">
                  <i class="fas fa-trash"></i></a>
              </td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>

    </div>

    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fab fa-ioxhost mr-2"></i>Post
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Content</th>
              <th>Date Post</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
            foreach ($post as $p) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $p['name']; ?></td>
              <td class="text-justify"><?= $p['post']; ?></td>
              <td><?= date('d F Y', $p['date_post']); ?></td>
              <td>
                <a href="<?= base_url('admin/deletePost/') . $p['id']; ?>" class="btn btn-danger btn-sm"
                  onclick="return confirm('Are you sure want to delete this post?');">
                  <i class="fas fa-trash"></i>
                </a>
              </td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>

  </div>
  <!-- X-Scroll bag1 -->

  <!-- Scroll tab bag2 -->
  <div class="row">
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-newspaper mr-2"></i>News
        <button class="btn btn-success btn-sm rounded-circle" style="float: right;" data-target="#insertModal"
          data-toggle="modal"><i class="fas fa-plus-circle"></i></button>
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Image</th>
              <th scope="col">Title</th>
              <th scope="col">Date Post</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
            foreach ($news as $n) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><img src="<?= base_url('assets/img/news/') . $n['image']; ?>" class="img-thumbanil img-fluid"></td>
              <td><?= $n['title']; ?></td>
              <td><?= date('d F Y', $n['date_post']); ?></td>
              <td>
                <a href="" class="badge badge-primary" data-toggle="modal" data-target="#editModal<?= $n['id']; ?>">
                  <i class="fas fa-edit"></i> Edit
                </a>
                <a href="<?= base_url('admin/deleteNews/') . $n['id']; ?>" class="badge badge-danger"
                  onclick="return confirm('Are you sure want to delete this news?');">
                  <i class="fas fa-trash"></i> Hapus
                </a>
              </td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-inbox mr-2"></i>Messages
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr class="text-center">
              <th scope="col">#</th>
              <th scope="col">Name</th>
              <th scope="col">Email</th>
              <th scope="col">NIK</th>
              <th scope="col">Status</th>
              <th scope="col">Message</th>
              <th scope="col">Attach</th>
              <th scope="col">Date</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
                foreach ($message as $m) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $m['name']; ?></td>
              <td><?= $m['email']; ?></td>
              <td><?= $m['nik']; ?></td>
              <td><?= $m['status']; ?></td>
              <td><?= $m['message']; ?></td>
              <td><?= $m['attach']; ?></td>
              <td><?= date('d F Y', $m['date_message']); ?></td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>
  </div>
  <!--  X-scroll bag2 -->

  <!-- A-Scroll bag3 -->
  <div class="row">
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-graduation-cap mr-2"></i>Level
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Image</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
            foreach ($jenjang as $j) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $j['jenjang']; ?></td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-book mr-2"></i>Lesson
        <button class="btn btn-success btn-sm rounded-circle" style="float: right;" data-target="#insertPelajaranModal"
          data-toggle="modal"><i class="fas fa-plus-circle"></i></button>
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr class="text-center">
              <th scope="col">#</th>
              <th scope="col">Kode</th>
              <th scope="col">Pelajaran</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
                foreach ($pelajaran as $pe) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $pe['kd_mapel']; ?></td>
              <td><?= $pe['pelajaran']; ?></td>
              <td>
                <a href="<?= base_url('admin/deletepelajaran/') . $pe['id']; ?>" class="badge badge-danger"
                  onclick="return confirm('Are you sure want to delete this news?');">
                  <i class="fas fa-trash"></i> Hapus
                </a>
              </td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>
  </div>
  <!-- X-Scroll bag3 -->

  <!-- A-Scroll bag4 -->
  <div class="row">
    <div class="col-6">
      <button class="btn btn-primary">
        <i class="fas fa-school mr-2"></i>Class
      </button>
      <div class="card py-3 my-2">

        <table id="" class="display nowrap" style="width:100%">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Class</th>
            </tr>
          </thead>
          <tbody>
            <?php $i = 1;
            foreach ($kelas as $k) : ?>
            <tr>
              <th scope="row"><?= $i++; ?></th>
              <td><?= $k['kelas']; ?></td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>

      </div>
    </div>

    <div class="col-6">


    </div>
  </div>

</div>
<!-- X-Scroll bag4-->

<!-- A-Scroll bag5-->
<div class="row p-2">
  <div class="col">
    <button class="btn btn-primary">
      <i class="fas fa-globe mr-2"></i>Theory
    </button>
    <button class="btn btn-success btn-sm rounded-circle" style="float: right;" data-target="#insertMateriModal"
      data-toggle="modal"><i class="fas fa-plus-circle"></i></button>
    <div class="card py-3 my-2">

      <table id="" class="display nowrap" style="width:100%; margin:auto">
        <thead>
          <tr class="text-center">
            <th scope="col">#</th>
            <th scope="col">Jenjang</th>
            <th scope="col">Pelajaran</th>
            <th scope="col">Kelas</th>
            <th scope="col">Materi</th>
            <th scope="col">File</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1;
                foreach ($jmateri as $jm) : ?>
          <tr>
            <th scope="row"><?= $i++; ?>
            </th>
            <td><?= $jm['jenjang']; ?></td>
            <td><?= $jm['pelajaran']; ?></td>
            <td><?= $jm['kelas']; ?></td>
            <td><?= $jm['materi']; ?></td>
            <td><?= $jm['file']; ?></td>
          </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
  <!-- X-Scroll bag5 -->

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->