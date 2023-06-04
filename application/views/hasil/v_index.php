<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">Bimbingan KP</div>
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-cog"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">List Bimbingan KP</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->


<div class="row">
    <div class="col-xl-12">
        <div class="card">
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
                    <thead class="table-light">
                        <tr>
                            <th>Nama</th>
                            <th>Nim</th>
                            <th>Lokasi KP</th>
                            <th>Tanggal KP</th>
                            <th>Dosen Pembimbing</th>
                            <th>Nilai Akhir</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_datakp as $r) {
                        ?>
                            <tr>
                                <td><?= $r->name ?></td>
                                <td><?= $r->created_by ?></td>
                                <td><?= $r->lokasi ?></td>
                                <td><?= date("d M Y", strtotime($r->tgl_mulai)) ?> s/d <?= date("d M Y", strtotime($r->tgl_akhir)) ?></td>
                                <td><?= $r->dosen_name ?></td>
                                <td><?= $r->nilai_akhir ?></td>
                                <td>
                                    <?php
                                    if ($this->session->userdata('role') == 2) {
                                    ?>
                                        <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleLargeModal3" title="Set Dosen Pembimbing" style="cursor:pointer" onclick="set_modal('<?= $r->id ?>')"><i class="bi bi-pencil-fill"></i> Berikan Nilai</a>
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


<!-- ==================== Modal ==================== -->
<div class="modal fade" id="exampleLargeModal3" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> Penilaian</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <?= form_open(base_url('C_Hasil_Kerja/Penilaian'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0"> </h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label form-control">Nilai Akhir Kerja Praktek</label>
                                        <input type="hidden" name="id_kp" id="id_kp" value="">
                                        <input type="text" name="nilai" id="nilai" class="form-control">
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