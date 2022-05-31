<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">

    <!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

      <!-- Sidebar Toggle (Topbar) -->
      <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
      </button>

      <h1 class="h3 my-2" style="color: #0c50ac; font-family:serif;"><?= $title; ?></h1>

      <!-- Topbar Navbar -->
      <ul class=" navbar-nav ml-auto">

        <div class="topbar-divider d-none d-sm-block"></div>

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <span class="mr-2 d-none d-lg-inline small"
              style="color: #0c50ac; font-weight: 200"><?= $user['name']; ?></span>
            <img class=" img-profile rounded-circle" src="<?= base_url('assets/img/profile/') . $user['image']; ?>">
          </a>
          <!-- Dropdown - User Information -->
          <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="<?= base_url('user/profile'); ?>">
              <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
              Profile
            </a>
            <a class="dropdown-item" href="<?= base_url('user/changesPassword'); ?>">
              <i class="fas fa-key fa-sm fa-fw mr-2 text-gray-400"></i>
              Changes Password
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item">
              <i class="fas fa-copyright fa-sm fa-fw mr-2 text-gray-400"></i>
              Version 0.5.22
            </a>
            <a class="dropdown-item" href="<?= base_url('autentifikasi/logout'); ?>">
              <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
              Logout
            </a>
          </div>
        </li>

      </ul>

    </nav>
    <!-- End of Topbar -->