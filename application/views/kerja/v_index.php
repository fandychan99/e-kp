<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">Kerja Praktek</div>
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-cog"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">List Kerja Praktek</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->

<div class="card">
    <div class="card-body">
        <ul class="nav nav-tabs nav-primary" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" data-bs-toggle="tab" href="#primaryhome" role="tab" aria-selected="true">
                    <div class="d-flex align-items-center">
                        <div class="tab-icon"><i class="bx bx-comment-detail font-18 me-1"></i>
                        </div>
                        <div class="tab-title">Pengajuan</div>
                    </div>
                </a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" data-bs-toggle="tab" href="#primaryprofile" role="tab" aria-selected="false" tabindex="-1">
                    <div class="d-flex align-items-center">
                        <div class="tab-icon"><i class="bx bx-comment-edit font-18 me-1"></i>
                        </div>
                        <div class="tab-title">Diterima</div>
                    </div>
                </a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" data-bs-toggle="tab" href="#primarycontact" role="tab" aria-selected="false" tabindex="-1">
                    <div class="d-flex align-items-center">
                        <div class="tab-icon"><i class="bx bx-comment-x font-18 me-1"></i>
                        </div>
                        <div class="tab-title">Ditolak</div>
                    </div>
                </a>
            </li>
        </ul>
        <div class="tab-content py-3">
            <div class="tab-pane fade active show" id="primaryhome" role="tabpanel">
                <div class="col-md-2 ms-auto">
                    <?php
                    if ($this->session->userdata('role') == 4) {
                    ?>
                        <a data-bs-toggle="modal" data-bs-target="#exampleLargeModal" class="btn btn-danger form-control"><i class="bx bx-pluss"></i>Tambah Data</a>
                    <?php
                    }
                    ?>
                </div>
                <br>
                <table class="table align-middle mb-0" id="dtbl">
                    <thead class="table-light">
                        <tr>
                            <th>Diajukan Oleh</th>
                            <th>Lokasi</th>
                            <th>Tangga Mulai</th>
                            <th>Tanggal Berakhir</th>
                            <th>Keterangan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_dataaju as $r) {
                        ?>
                            <tr>
                                <td><?= $r->name ?></td>
                                <td><?= $r->lokasi ?></td>
                                <td><?= $r->tgl_mulai ?></td>
                                <td><?= $r->tgl_akhir ?></td>
                                <td><?= $r->keterangan ?></td>
                                <td>
                                    <div class="d-flex align-items-center gap-3 fs-6">
                                        <?php
                                        if ($this->session->userdata('role') == 4) {
                                        ?>
                                            <a class="text-danger" onclick="return confirm('Yakin mau hapus data <?= $r->lokasi ?> ? ')" href="<?= base_url() ?>C_Kerja_Praktek/delete?id=<?= encrypt_url($r->id) ?>" title="DELETE DATA"><i class="bi bi-trash-fill"></i></a>
                                        <?php
                                        } else {
                                        ?>
                                            <a class="text-success" onclick="return confirm('Setujui KP di lokasi <?= $r->lokasi ?> ? ')" href="<?= base_url() ?>C_Kerja_Praktek/terima_kp?id=<?= encrypt_url($r->id) ?>" title="Setujui"><i class="bi  bi-check-circle"></i></a>
                                            <a class="text-danger" data-bs-toggle="modal" data-bs-target="#exampleLargeModal2" title="Reject Data" style="cursor:pointer" onclick="set_modal('<?= $r->id ?>')"><i class="bi  bi-x-circle"></i></a>
                                            <!-- <a data-bs-toggle="modal" data-bs-target="#exampleLargeModal" class="text-warning"><i class="bi bi-x-circle"></i></a> -->
                                        <?php
                                        }
                                        ?>

                                    </div>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="primaryprofile" role="tabpanel">
                <table class="table align-middle mb-0" id="dtbl2">
                    <thead class="table-light">
                        <tr>
                            <th>Diajukan Oleh</th>
                            <th>Lokasi</th>
                            <th>Tangga Mulai</th>
                            <th>Tanggal Berakhir</th>
                            <th>Keterangan</th>
                            <th>Dosen Pembimbing</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_dataterima as $r) {
                        ?>
                            <tr>
                                <td><?= $r->name ?></td>
                                <td><?= $r->lokasi ?></td>
                                <td><?= $r->tgl_mulai ?></td>
                                <td><?= $r->tgl_akhir ?></td>
                                <td><?= $r->keterangan ?></td>
                                <td><?= $r->dosen_name ?> / <?= $r->dosen_pembimbing ?></td>
                                <td>
                                    <div class="d-flex align-items-center gap-3 fs-6">
                                        <?php

                                        if ($this->session->userdata('role') == 1) {
                                        ?>

                                            <a class="text-primary" data-bs-toggle="modal" data-bs-target="#exampleLargeModal3" title="Set Dosen Pembimbing" style="cursor:pointer" onclick="set_modal2('<?= $r->id ?>')"><i class="bi bi-pencil-fill"></i></a>
                                        <?php
                                        }
                                        ?>

                                    </div>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade" id="primarycontact" role="tabpanel">
                <table class="table align-middle mb-0" id="dtbl3">
                    <thead class="table-light">
                        <tr>
                            <th>Diajukan Oleh</th>
                            <th>Lokasi</th>
                            <th>Tangga Mulai</th>
                            <th>Tanggal Berakhir</th>
                            <th>Keterangan</th>
                            <th>Alasan Ditolak</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_datatolak as $r) {
                        ?>
                            <tr>
                                <td><?= $r->name ?></td>
                                <td><?= $r->lokasi ?></td>
                                <td><?= $r->tgl_mulai ?></td>
                                <td><?= $r->tgl_akhir ?></td>
                                <td><?= $r->keterangan ?></td>
                                <td><?= $r->komentar_koordinator ?> </td>
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


<!-- ==================================== REGION MODAL ===================================== -->
<div class="modal fade" id="exampleLargeModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> KERJA PRAKTEK</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Kerja_Praktek/Save_Pendaftaran'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">PENDAFTARAN</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label">Lokasi</label>
                                        <textarea name="lokasi" id="lokasi" class="form-control" rows="2"></textarea>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Tanggal Mulai</label>
                                        <input type="date" class="form-control" name="tgl_mulai" value="" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Tanggal Akhir</label>
                                        <input type="date" class="form-control" name="tgl_akhir" value="" required>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Keterangan</label>
                                        <textarea name="keterangan" id="keterangan" class="form-control" rows="2"></textarea>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="text-start">
                            <button type="submit" class="btn btn-primary px-4">Simpan</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <?= form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleLargeModal2" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> KERJA PRAKTEK</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Kerja_Praktek/Tolak_Pendaftaran'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">Tolak </h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label">Alasan Di Tolak</label>
                                        <input type="hidden" name="id_kp" id="id_kp" value="">
                                        <textarea name="keterangan" id="keterangan" class="form-control" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-start">
                            <button type="submit" class="btn btn-primary px-4">Simpan</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <?= form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleLargeModal3" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> KERJA PRAKTEK</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Kerja_Praktek/Set_Dosen'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">Tolak </h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label">SET DOSEN PEMBIMBING</label>
                                        <input type="hidden" name="id_kp2" id="id_kp2" value="">
                                        <select name="dosen" id="dosen" class="form-control">
                                            <?php
                                            foreach ($_dosen as $r) {
                                                echo "<option value='$r->user_id'>$r->name</option>";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-start">
                            <button type="submit" class="btn btn-primary px-4">Simpan</button>
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
        $('#dtbl2').DataTable();
        $('#dtbl3').DataTable();
    });
</script>

<script>
    function set_modal($id) {
        $("#id_kp").val($id);
    }

    function set_modal2($id) {
        $("#id_kp2").val($id);
    }
</script>