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
                        <?= $data_user->name; ?> / <?= $data_user->nip; ?>, <?= $data_user->sex; ?>
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
    <!-- name,  nim,  sex,  born,  address,  jurusan,  email,  phone,   -->
    <div class="col-12 col-lg-8">
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="card-body">
                <h4>Data Diri</h4>
                <hr>
                <form class="row g-3" method="POST" action="<?=base_url()?>C_Profile/Update_Mahasiswa">
                    <div class="col-6">
                        <label class="form-label">NIP</label>
                        <input type="text" class="form-control" name="name" value="<?= $data_user->nip; ?>" readonly>
                    </div>
                    <div class="col-6">
                        <label class="form-label">Nama</label>
                        <input type="text" class="form-control" name="name" value="<?= $data_user->name; ?>">
                    </div>
                    <div class="col-6">
                        <label class="form-label">Jenis Kelamin</label>
                        <select name="sex" id="sex" class="form-control" required>
                            <option value="<?= $data_user->sex; ?>"><?= $data_user->sex; ?></option>
                            <option value="Laki - Laki">Laki - Laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </div>
                    <div class="col-6">
                        <label class="form-label">Tanggal Lahir</label>
                        <input type="date" class="form-control" name="born" value="<?= $data_user->born; ?>">
                    </div>
                    <div class="col-6">
                        <label class="form-label">Email</label>
                        <input type="text" class="form-control" name="email" value="<?= $data_user->email; ?>">
                    </div>
                    <div class="col-6">
                        <label class="form-label">No HP</label>
                        <input type="text" class="form-control" name="phone" value="<?= $data_user->phone; ?>">
                    </div>
                    <div class="col-6">
                        <label class="form-label">Pendidikan Terakhir</label>
                        <input type="text" class="form-control" name="phone" value="<?= $data_user->study; ?>">
                    </div>
                    <div class="col-6">
                        <label class="form-label">Gelar</label>
                        <input type="text" class="form-control" name="phone" value="<?= $data_user->gelar; ?>">
                    </div>
                    <div class="col-12">
                        <label class="form-label">Alamat</label>
                        <textarea class="form-control" rows="2" class="form-control" name="address"><?= $data_user->address; ?></textarea>
                    </div>
                    <hr>
                    <div class="col-6">
                        <button class="btn btn-outline-primary" type="submit"> <i class="bi bi-upload"></i> Update Data</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleLargeModal2" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> PROFILE</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open_multipart(base_url('C_Profile/do_upload'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">Foto Profil</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
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
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <?= form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>