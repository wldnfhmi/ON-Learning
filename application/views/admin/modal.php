<!-- Inser News tModal -->
<?php $i = 0;
foreach ($news as $n) : $i++; ?>
<div class=" modal fade" id="insertModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Insert News</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo form_open_multipart('admin/insertNews'); ?>
        <div class="form-group">
          <label for="title">Title News</label>
          <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="form-group">
          <label for="contents">Contents</label>
          <textarea class="form-control" id="contents" name="contents" rows="3"></textarea>
        </div>
        <div class="custom-file">
          <input type="file" class="custom-file-input" id="image" name="image">
          <label class="custom-file-label" for="image">Choose file</label>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Add News</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Edit Modal -->
<div class="modal fade" id="editModal<?= $n['id']; ?>" tabindex="-1" aria-labelledby="editModalLabel"
  aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Edit News</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php echo form_open_multipart('admin/prosesEditNews'); ?>
      <div class="modal-body">
        <div class="form-group">
          <input type="hidden" name="id" id="id" value="<?= $n['id']; ?>">
        </div>
        <div class="form-group">
          <label for="title">Title News</label>
          <input type="text" class="form-control" id="title" name="title" placeholder="News Title"
            value="<?= $n['title']; ?>">
        </div>
        <div class="row">
          <div class="col-3">
            <img src="<?= base_url('assets/img/news/') . $n['image']; ?>" class="img-thumbnail img-fluid">
          </div>
          <div class="col-auto">
            <div class="custom-file">
              <input type="file" class="custom-file-input" id="image" name="image">
              <label class="custom-file-label" for="image">Choose file</label>
            </div>
          </div>
        </div>
      </div>
      <div class=" modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>
<?php endforeach; ?>

<!-- Insert Pelajaran Modal -->
<div class="modal fade" id="insertPelajaranModal" tabindex="-1" aria-labelledby="insertPelajaranModalLabel"
  aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="insertPelajaranModalLabel">Insert Pelajaran</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" action="<?= base_url('admin/insertPelajaran'); ?>">
        <div class="modal-body">
          <div class="form-group">
            <label for="pelajaran">Nama Pelajaran</label>
            <input type="text" class="form-control" id="pelajaran" name="pelajaran" placeholder="cth: Matematika">
          </div>
          <div class="form-group">
            <label for="kd_mapel">Kode Pelajaran</label>
            <input type="text" class="form-control" id="kd_mapel" name="kd_mapel" placeholder="cth: MTK">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Insert</button>
        </div>
      </form>
    </div>
  </div>
</div>


<!-- Insert Materi Modal -->
<div class="modal fade" id="insertMateriModal" tabindex="-1" aria-labelledby="insertMateriModalLabel"
  aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="insertMateriModalLabel">Insert Materi</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php echo form_open_multipart('admin/insertMateri'); ?>
      <div class="modal-body">
        <div class="form-group">
          <label for="jenjang">Jenjang</label>
          <select class="form-control" id="jenjang" name="jenjang">
            <option value="">- Pilih Jenjang -</option>
            <?php foreach ($jenjang as $j) : ?>
            <option value="<?= $j['id']; ?>"><?= $j['jenjang']; ?></option>
            <?php endforeach; ?>
          </select>
        </div>
        <div class="form-group">
          <label for="pelajaran">Pelajaran</label>
          <select class="form-control" id="pelajaran" name="pelajaran">
            <option value="">- Pilih Pelajaran -</option>
            <?php foreach ($pelajaran as $p) : ?>
            <option value="<?= $p['id']; ?>"><?= $p['pelajaran']; ?></option>
            <?php endforeach; ?>
          </select>
        </div>
        <div class="form-group">
          <label for="kelas">kelas</label>
          <select class="form-control" id="kelas" name="kelas">
            <option value="">- Pilih Kelas -</option>
            <?php foreach ($kelas as $k) : ?>
            <option value="<?= $k['id']; ?>"><?= $k['kelas']; ?></option>
            <?php endforeach; ?>
          </select>
        </div>
        <div class="form-group">
          <label for="materi">Materi</label>
          <input type="text" class="form-control" id="materi" name="materi">
        </div>
        <div class="custom-file">
          <input type="file" class="custom-file-input" id="file" name="file">
          <label class="custom-file-label" for="file">Choose file</label>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Insert</button>
      </div>
      </form>
    </div>
  </div>
</div>