<!-- Begin Page Content -->
<div class="container-fluid">

  <div class="row">
    <div class="col-lg-5">
      <?= $this->session->flashdata('message');?>
    </div>
  </div>

  <div class="row">
    <div class="col-lg-5">
      <div class="card">
        <div class="card-header bg-primary text-light">
          <h2 class="text-center pt-1 pb-0">Contact Us</h2>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            <i class="fab fa-whatsapp pr-2"></i><a href="https://wa.me/081384683590">+62 813 8468 3590</a>
          </li>
          <li class="list-group-item">
            <i class="fas fa-at pr-2"></i><a href="mailto:4s.pein@gmail.com">4s.pein@gmail.com</a>
          </li>
          <li class="list-group-item">
            <i class="fab fa-facebook pr-2"></i><a href="https://www.facebook.com/On-Learning-100315075979490">On -
              Learning</a>
          </li>
          <li class="list-group-item">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.2786568520587!2d108.18009051477313!3d-6.976412594960086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6f3125bb653aa1%3A0x6077e5fde83adecf!2sStarCom%20Sadawangi!5e0!3m2!1sen!2sid!4v1637305486571!5m2!1sen!2sid"
              width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </li>
        </ul>
      </div>
    </div>
    <div class="col-lg-6">
      <?php echo form_open_multipart('user/insertCritique');?>

      <div class="form-group">
        <label for="name">Your Name</label>
        <input type="name" class="form-control" id="name" name="name" value="<?= $user['name']; ?>">
      </div>
      <div class="form-group">
        <label for="email">Your Email</label>
        <input type="email" class="form-control" id="email" name="email" value="<?= $user['email']; ?>">
      </div>
      <div class="form-group">
        <label for="nik">Nik</label>
        <input type="text" class="form-control" id="nik" name="nik">
        <?= form_error('nik', '<small class="text-danger pl-3">', '</small>'); ?>
      </div>
      <div class="form-group">
        <label for="status">Status</label>
        <input type="text" class="form-control" id="status" name="status">
        <?= form_error('status', '<small class="text-danger pl-3">', '</small>'); ?>
      </div>
      <div class="form-group">
        <label for="message">Leave me a message</label>
        <textarea class="form-control" id="message" name="message" rows="3"></textarea>
        <?= form_error('message', '<small class="text-danger pl-3">', '</small>'); ?>
      </div>
      <div class="custom-file">
        <input type="file" class="custom-file-input" id="file" name="file">
        <label class="custom-file-label" for="file">Choose file</label>
      </div>
      <button class="btn btn-primary btn-block mt-2" type="submit">Send</button>

      </form>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->