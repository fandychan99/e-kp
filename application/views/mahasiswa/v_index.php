<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">Database Mahasiswa</div>
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-cog"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">List Mahasiswa</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->

<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-header">
                <div class="col-md-2 ms-auto">
                    <a data-bs-toggle="modal" data-bs-target="#exampleLargeModal" class="btn btn-danger form-control"><i class="bx bx-pluss"></i>Tambah Data</a>
                </div>
            </div>
            <div class="card-body">
                <?php $msg = $this->input->get("msg");
                if ($msg != "") {
                ?>
                    <div class="alert border-0 bg-light-success alert-dismissible fade show">
                        <div class="text-success"><?= $msg; ?></div>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php } ?>
                <table class="table align-middle mb-0">
                    <thead class="table-light">
                        <tr>
                            <th>Nama</th>
                            <th>Nim</th>
                            <th>JK</th>
                            <th>Alamat</th>
                            <th>No HP</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_data as $r) {
                        ?>
                            <tr>
                                <td><?= $r->name ?></td>
                                <td><?= $r->nim ?></td>
                                <td><?= $r->sex ?></td>
                                <td><?= $r->address ?></td>
                                <td><?= $r->phone ?></td>
                                <td>
                                    <div class="d-flex align-items-center gap-3 fs-6">
                                        <!-- <a class="text-warning" onclick="return confirm('Sure to Edit it ? ')" href="<?= base_url() ?>C_User?id=<?= encrypt_url($r->user_id) ?>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit info" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a> -->
                                        <a class="text-danger" onclick="return confirm('Yakin mau hapus data <?=$r->name?> ? ')" href="<?= base_url() ?>C_Mahasiswa/delete?id=<?= encrypt_url($r->user_id) ?>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                                    </div>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleLargeModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> PROFILE</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Mahasiswa/Save'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">USER INFORMATION</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-6">
                                        <label class="form-label">NIM</label>
                                        <input type="hidden" name="action" value="add">
                                        <input type="text" class="form-control" value="" name="nim">
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Nama</label>
                                        <input type="text" class="form-control" name="name" value="" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Tanggal Lahir</label>
                                        <input type="date" class="form-control" name="born" value="" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Jenis Kelamin</label>
                                        <select name="sex" id="sex" class="form-control" required>
                                            <option value="Laki - Laki">Laki - Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Email</label>
                                        <input type="text" class="form-control" name="email" value="" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">No HP</label>
                                        <input type="text" class="form-control" name="phone" value="" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Jurusan</label>
                                        <select name="jurusan" id="jurusan" class="form-control">
                                            <option value="-">Pilih Jururan</option>
                                            <?php 
                                                foreach ($_jurusan as $r) {
                                                    echo "<option value='$r->name'>$r->name</option>";
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Alamat</label>
                                        <textarea name="address" id="address" class="form-control" rows="2"></textarea>
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