<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">Bimbingan KP</div>
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-cog"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Detail Bimbingan KP</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->

<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <table class="table">
                    <tr>
                        <td width="10%">NIM</td>
                        <td width="20%">: <?= $_datakp->created_by; ?></td>
                        <td width="50%"></td>
                    </tr>
                    <tr>
                        <td width="10%">Nama</td>
                        <td width="20%">: <?= $_datakp->name; ?></td>
                        <td width="50%"></td>
                    </tr>
                    <tr>
                        <td width="10%">Lokasi</td>
                        <td width="20%">: <?= $_datakp->lokasi; ?></td>
                        <td width="50%"></td>
                    </tr>
                    <tr>
                        <td width="10%">Tanggal</td>
                        <td width="20%">: <?= date("d M Y", strtotime($_datakp->tgl_mulai)) ?> s/d <?= date("d M Y", strtotime($_datakp->tgl_akhir)) ?></td>
                        <td width="50%"></td>
                    </tr>
                    <tr>
                        <td width="10%">Deskripsi KP</td>
                        <td width="20%">: <?= $_datakp->keterangan; ?></td>
                        <td width="50%"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-header">
                <div class="col-md-2 ms-auto">
                    <?php
                    if ($this->session->userdata("role") == 2) {
                    ?>
                        <a data-bs-toggle="modal" data-bs-target="#exampleLargeModal" class="btn btn-danger form-control"><i class="bx bx-pluss"></i>Tambah Data</a>
                    <?php
                    }
                    ?>
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
                <table class="table align-middle mb-0" id="dtbl">
                    <thead class="table-light" >
                        <tr>
                            <th>No</th>
                            <th>Tanggal Bimbingan</th>
                            <th>Catatan Bimbingan</th>
                            <th>Created By</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($_lstbimbingan as $r) {
                        ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $r->tanggal_bimbingan ?></td>
                                <td><?= $r->komentar ?></td>
                                <td><?= $r->created_by ?></td>
                                <td> <?php
                                        if ($this->session->userdata("role") == 2) {
                                        ?>
                                        <div class="d-flex align-items-center gap-3 fs-6">
                                            <a class="text-danger" onclick="return confirm('Yakin mau hapus data tanggal <?= $r->tanggal_bimbingan ?> ? ')" href="<?= base_url() ?>C_Bimbingan/delete?id=<?= encrypt_url($r->id) ?>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                                        </div>
                                    <?php
                                        }
                                    ?>
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
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> Bimbingan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Bimbingan/Save'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">Catatan Bimbingan</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">

                                    <div class="col-12">
                                        <label class="form-label">Tanggal Bimbingan</label>
                                        <input type="hidden" name="id_kp" value="<?= decrypt_url($this->input->get("id")) ?>">
                                        <input type="date" class="form-control" name="tanggal_bimbingan" value="" required>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Catatan</label>
                                        <textarea name="komentar" id="komentar" class="form-control" rows="10"></textarea>
                                        <!-- <input type="text" class="form-control" name="name" value="" required> -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-start">
                            <button type="submit" class="btn btn-primary px-4">Save</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <?= form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#dtbl').DataTable();
    });
</script>