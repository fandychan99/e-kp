<div class="row">
    <div class="col-12 col-lg-8">
        <div class="card shadow-sm border-0">
            <div class="card-body">
                <?= form_open_multipart(base_url('C_Profile/do_upload'), "id='formuser'") ?>
                <div class="card shadow-none border">
                    <div class="card-header">
                        <h6 class="mb-0">USER GENERAL INFORMATION</h6>
                    </div>
                    <div class="card-body">
                        <div class="row g-3">
                            <div class="col-6">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="nama_user" value="<?= $data_user->NAME ?>" required>
                            </div>
                            <div class="col-6">
                                <label class="form-label">profile image</label>
                                <!-- <input type="text" class="form-control" value=""> -->
                                <input type="file" name="file" id="file" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-start">
                    <button type="submit" class="btn btn-primary px-4">Save Changes</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
        <div class="card shadow-sm border-0">
            <div class="card-body">
                <div class="card shadow-none border">
                    <div class="card-header">
                        <h6 class="mb-0">USER DOCTOR INFORMATION</h6>
                    </div>
                    <div class="card-body">
                        <?= form_open(base_url('C_Profile/update_profile_doctor'), "id='formuser'") ?>
                        <div class="col-8">
                            <label class="form-label">Study</label>
                            <input type="text" class="form-control" name="last_study" value="<?= $data_user->last_study ?>" required>
                        </div>
                        <div class="col-8">
                            <label class="form-label">Credential</label>
                            <input type="text" class="form-control" name="gelar" value="<?= $data_user->gelar ?>" required>
                        </div>
                        <div class="col-md-8">
                            <label class="form-label">Specialist</label>
                            <?php
                            $style_kategori = 'class="single-select form-control" id="specialist" ';
                            echo form_dropdown('spesialist', $list_specialist, $data_user->spesialist, $style_kategori);
                            ?>
                        </div>
                        <div class="col-8">
                            <label class="form-label">About</label>
                            <textarea name="about" id="about" rows="3" class="form-control"><?= $data_user->about; ?></textarea>
                        </div>
                    </div>
                </div>

                <div class="text-start">
                    <button type="submit" class="btn btn-primary px-4">Save Changes</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>



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
                    <h4 class="mb-1">Dr. <?= $data_user->NAME; ?> <?= $data_user->gelar; ?></h4>
                    <p class="mb-0 text-secondary"></p>
                    <div class="mt-4"></div>
                    <h6 class="mb-1"><?= $data_user->spesialist_name; ?></h6>
                    <!-- <p class="mb-0 text-secondary">University of Information Technology</p> -->
                </div>
                <hr>
                <div class="text-start">
                    <h5 class="">About</h5>
                    <p class="mb-0"><?= $data_user->about; ?>
                    </p>
                </div>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item d-flex justify-content-between align-items-center bg-transparent border-top">
                    Credential
                    <span class="badge bg-primary rounded-pill"><?= $data_user->gelar; ?></span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center bg-transparent">
                    Education
                    <span class="badge bg-primary rounded-pill"><?= $data_user->last_study; ?></span>
                </li>

            </ul>
        </div>
    </div>
</div><!--end row-->