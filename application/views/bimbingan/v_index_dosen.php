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
                            <th>Total Bimbingan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($_datakp as $r) {
                        ?>
                        <tr>
                            <td><?=$r->name?></td>
                            <td><?=$r->created_by?></td>
                            <td><?=$r->lokasi?></td>
                            <td><?=date("d M Y", strtotime($r->tgl_mulai))?> s/d <?=date("d M Y", strtotime($r->tgl_akhir))?></td>
                            <td><?=$r->dosen_name?></td>
                            <td><?=$r->tot_bimbingan?></td>
                            <td><a class="btn btn-primary form-control" href="<?=base_url()?>C_Bimbingan/dtl_bim?id=<?=encrypt_url($r->id)?>">Lihat Details</a></td>
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

<script>
    $(document).ready(function() {
        $('#dtbl').DataTable();
    });
</script>