<header class="top-header">
    <nav class="navbar navbar-expand">
        <div class="mobile-toggle-icon d-xl-none">
            <i class="bi bi-list"></i>
        </div>

        <div class="search-toggle-icon d-xl-none ms-auto">
            <i class="bi bi-search"></i>
        </div>
        <form class="searchbar d-none d-xl-flex ms-auto">
            <div class="position-absolute top-50 translate-middle-y search-icon ms-3"><i class="bi bi-search"></i></div>
            <input class="form-control" type="text" placeholder="Type here to search">
            <div class="position-absolute top-50 translate-middle-y d-block d-xl-none search-close-icon"><i class="bi bi-x-lg"></i></div>
        </form>
        <div class="top-navbar-right ms-3">
            <ul class="navbar-nav align-items-center">
                <li class="nav-item dropdown dropdown-large">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                        <div class="user-setting d-flex align-items-center gap-1">
                            <?php
                            if (empty($this->session->userdata("user_image"))) {
                            ?>
                                <img src="<?= base_url(); ?>assets/images/avatars/avatar.png" class="user-img" alt="">
                            <?php
                            } else {
                            ?>
                                <img src="<?= base_url() ?>assets/images/user/<?= $this->session->userdata("user_image"); ?>" class="user-img" alt="">
                            <?php
                            }
                            ?>

                            <div class="user-name d-none d-sm-block"><?= $this->session->userdata("username"); ?></div>
                        </div>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li>
                            <a class="dropdown-item" href="#">
                                <div class="d-flex align-items-center">
                                    <!-- <img src="<?= base_url(); ?>assets/images/avatars/avatar.png" alt="" class="rounded-circle" width="60" height="60"> -->
                                    <?php
                                    if (empty($this->session->userdata("user_image"))) {
                                    ?>
                                        <img src="<?= base_url(); ?>assets/images/avatars/avatar.png" class="rounded-circle shadow" width="120" height="120" alt="">
                                    <?php
                                    } else {
                                    ?>
                                        <img src="<?= base_url() ?>assets/images/user/<?= $this->session->userdata("user_image"); ?>" class="rounded-circle shadow" width="120" height="120" alt="">
                                    <?php
                                    }
                                    ?>
                                    <div class="ms-3">
                                        <h6 class="mb-0 dropdown-user-name"><?= $this->session->userdata("username"); ?></h6>
                                        <!-- <small class="mb-0 dropdown-user-designation text-secondary">HR Manager</small> -->
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="<?= base_url() ?>C_Profile">
                                <div class="d-flex align-items-center">
                                    <div class="setting-icon"><i class="bi bi-person-fill"></i></div>
                                    <div class="setting-text ms-3"><span>Profile</span></div>
                                </div>
                            </a>
                        </li>

                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="<?= base_url() ?>C_Auth/log_out">
                                <div class="d-flex align-items-center">
                                    <div class="setting-icon"><i class="bi bi-lock-fill"></i></div>
                                    <div class="setting-text ms-3"><span>Logout</span></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Mesage -->
                <li class="nav-item dropdown dropdown-large" hidden>
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                        <div class="messages">
                            <!-- <span class="notify-badge"></span> -->
                            <i class="bi bi-messenger"></i>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end p-0">
                        <div class="p-2 border-bottom m-2">
                            <h5 class="h5 mb-0">Messages</h5>
                        </div>
                        <div class="header-message-list p-2">


                        </div>
                        <div class="p-2">
                            <div>
                                <hr class="dropdown-divider">
                            </div>
                            <a class="dropdown-item" href="#">
                                <div class="text-center">View All Messages</div>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown dropdown-large d-none " hidden>
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                        <div class="notifications">
                            <!-- <span class="notify-badge"></span> -->
                            <i class="bi bi-bell-fill"></i>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end p-0">
                        <div class="p-2 border-bottom m-2">
                            <h5 class="h5 mb-0">Notifications</h5>
                        </div>
                        <div class="header-notifications-list p-2">


                        </div>
                        <div class="p-2">
                            <div>
                                <hr class="dropdown-divider">
                            </div>
                            <a class="dropdown-item" href="#">
                                <div class="text-center">View All Notifications</div>
                            </a>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </nav>
</header>