<?php
$id = decrypt_url($this->input->get("id"));

?>
<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="breadcrumb-title pe-3">User Management</div>
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-cog"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">List User</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->
<div class="row">
    <div class="col-xl-4">
        <div class="card">
            <div class="border p-4 rounded">
                <?= $id == "" ? form_open(base_url("C_User/add"), 'id="formuser"') : form_open(base_url("C_User/edit"), 'id="formuser"'); ?>
                <div class="card-title d-flex align-items-center">
                    <h5 class="mb-0">User Registration </h5>

                </div>
                <hr />
                <div class="row mb-3">
                    <label for="inputConfirmPassword2" class="col-form-label">User ID*</label>
                    <input type="text" class="form-control" id="user_id" name="user_id" placeholder="user id" required <?= $id == "" ? "" : "readonly" ?> value="<?= !empty($userby) ? $userby->user_id : "" ?>">
                </div>

                <div class="row mb-3">
                    <label for="inputConfirmPassword2" class="col-form-label">Name*</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="full name" required value="<?= !empty($userby) ? $userby->name : "" ?>">
                </div>

                <div class="row mb-3">
                    <label for="inputConfirmPassword2" class="col-form-label">Role*</label>
                    <?php
                    $rl = !empty($userby) ? $userby->role_id : "";
                    $style_kategori = 'class="form-control" id="role" required';
                    echo form_dropdown('role', $_role, $rl, $style_kategori);
                    ?>

                </div>

                <?php
                if (empty($userby)) {
                ?>
                    <div class="row mb-3">
                        <label for="inputConfirmPassword2" class="col-form-label">Password* <a onclick="show_password()"><i id="icon" class="bi bi-eye-slash"></i></a>
                        </label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="password" minlength="8" pattern="(?=.*\d)(?=.*[A-Z])(?=.*[a-z]).*" required title="Gunakan Huruf Besar kecil angka serta simbol">
                    </div>
                <?php
                }
                ?>
                <div class="row mb-3" hidden>
                    <div class="col-sm-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck4" name="web">
                            <label class="form-check-label" for="gridCheck4">Web Access</label>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck4" name="andro">
                            <label class="form-check-label" for="gridCheck4">Android Access</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="d-flex align-items-center gap-3 fs-6">
                        

                        <button type="submit" class="btn btn-primary px-5"> <?= $id == "" ? "REGISTER" : "UPDATE" ?></button>
                        <?php
                        if (!empty($userby)) {
                        ?>
                            <a href="<?=base_url()?>C_User" class="btn btn-outline-danger"><i class="bi bi-plus"></i>Create New</a>
                        <?php } ?>
                        </div>
                    </div>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
    <div class="col-xl-8">
        <div class="card">
            <div class="card-header py-3 bg-transparent">
                <!-- <div class="ms-auto" style="text-align: right;">
                    <a href="<?= base_url() ?>c_user/forminput?state=<?= encrypt_url('add'); ?>" class="btn btn-primary"><em class="fa fa-plus"></em> Tambah User</a>
                </div> -->
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="tbluser" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>Full Name</th>
                                <th>Roles</th>
                                <th>Access App</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php

                            foreach ($_user as $item) {
                                $access = "";
                                $access = ($item->web_access == 1 ? $access . ' WEB' : $access);
                                $access = ($item->android_access == 1 ? $access . ' Android' : $access);
                                $status = ($item->is_nonactive ? 'NON AKTIVE' : ($item->is_locked ? 'AKUN DI KUNCI' : 'AKTIF'));
                                echo "<tr>
                                        <td>$item->user_id</td>
                                        <td>$item->name</td>
                                        <td>$item->role</td>
                                        <td>$access</td>
                                        <td>$status</td>";

                            ?><td>
                                    <div class="d-flex align-items-center gap-3 fs-6">
                                        <a class="text-warning" onclick="return confirm('Sure to Edit it ? ')" href="<?= base_url() ?>C_User?id=<?= encrypt_url($item->user_id) ?>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Edit info" aria-label="Edit"><i class="bi bi-pencil-fill"></i></a>
                                        <a class="text-danger" onclick="return confirm('Sure to Deleted it ? ')" href="<?= base_url() ?>C_User/delete?id=<?= encrypt_url($item->user_id) ?>" data-bs-toggle="tooltip" data-bs-placement="bottom" title="" data-bs-original-title="Delete" aria-label="Delete"><i class="bi bi-trash-fill"></i></a>
                                    </div>
                                </td>
                            <?php
                                echo "</tr>";
                            }

                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('user/v_script'); ?>
<script>
    $(function() {
        "use strict";
        console.log(<?php var_dump($_menu); ?>)
        $(document).ready(function() {
            $('#tbluser').DataTable();
        });
    });
</script>