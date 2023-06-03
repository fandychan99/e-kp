<div class="row">
    <div class="col-12 col-lg-4">
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="card-body">
                <div class="profile-avatar text-center">
                    <?php
                    if ($data_user->image == NULL) {
                    ?>
                        <img src="<?= base_url(); ?>assets/images/avatars/avatar.png" class="rounded-circle shadow" width="120" height="120" alt="">
                    <?php
                    } else {
                    ?>
                        <img src="<?= base_url() ?>assets/images/user/<?= $data_user->image; ?>" class="rounded-circle shadow" width="120" height="120" alt="">
                    <?php
                    }
                    ?>

                </div>
                <div class="text-center mt-4">
                    <h4 class="mb-1">
                        <?= $data_user->NAME; ?>, <?= $data_user->sex; ?>
                        <a data-bs-toggle="modal" data-bs-target="#exampleLargeModal2" style="cursor: pointer; color:orange"><i class="bx bx-edit"></i></a>
                    </h4>
                    <p class="mb-0 text-secondary"></p>
                    <div class="mt-4"></div>
                    <h6 class="mb-1"><?= date("l, d M Y", strtotime($data_user->born)); ?></h6>
                    <!-- <p class="mb-0 text-secondary">University of Information Technology</p> -->
                </div>
                <hr>
            </div>
        </div>
    </div>
</div>