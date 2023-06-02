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

    <div class="col-12 col-lg-8">
        <!-- <div class="col-12"> -->
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="row">
                <div class="col-md-4" style="text-align: center; padding-top: 10px; border-right: silver solid;">
                    <?php
                    $tanggal_lahir = date("Y-m-d", strtotime($data_user->born));
                    $tanggal_sekarang = date("Y-m-d");

                    $timestamp_lahir = strtotime($tanggal_lahir);
                    $timestamp_sekarang = strtotime($tanggal_sekarang);

                    $selisih_timestamp = abs($timestamp_sekarang - $timestamp_lahir);
                    $umur_tahun = floor($selisih_timestamp / (365 * 24 * 60 * 60));
                    ?>

                    <h4>Age</h4>
                    <h6><?= $umur_tahun; ?> Years</h6>
                </div>
                <div class="col-md-4" style="text-align: center; padding-top: 10px; border-right: silver solid;">
                    <h4>Height</h4>
                    <h6><?= number_format($data_user->height); ?> CM</h6>
                </div>
                <div class="col-md-3" style="text-align: center; padding-top: 10px;">
                    <h4>Weight</h4>
                    <h6><?= number_format($data_user->weight); ?> KG</h6>
                </div>
                <div class="col-md-1" style="text-align: right; padding-top: 10px;">
                    <h4><a data-bs-toggle="modal" data-bs-target="#exampleLargeModal" style="cursor: pointer; color:blue"><i class="bx bx-edit"></i></a></h4>
                </div>
            </div>
        </div>

        <?php
        if ($this->session->userdata("role") != 1) {
        ?>
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 row-cols-xxl-4">
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body" style="position: relative;">
                            <div class="d-flex align-items-center mb-2">
                                <div class="">
                                    <p class="mb-1">Heart Rate</p>
                                    <h4 class="mb-0"><?= number_format($data_user->heartrate); ?> bpm</h4>
                                </div>
                                <div class="ms-auto fs-4 text-primary">
                                </div>
                            </div>
                            <div style="text-align: left; width: 288px; height: 90px; padding-left:40%">
                                <img src="<?= base_url() ?>assets\images\heartrate.png" alt="">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body" style="position: relative;">
                            <div class="d-flex align-items-center mb-2">
                                <div class="">
                                    <p class="mb-1">Blood Pressure </p>
                                    <h4 class="mb-0"><?= number_format($data_user->bloodpressure); ?> mmHg</h4>
                                </div>
                                <div class="ms-auto fs-4 text-success">
                                </div>
                            </div>

                            <div style="text-align: left; width: 288px; height: 90px; padding-left:40%">
                                <img src="<?= base_url() ?>assets\images\bloodpressure.png" alt="">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body" style="position: relative;">
                            <div class="d-flex align-items-center mb-2">
                                <div class="">
                                    <p class="mb-1">Cholesterol</p>
                                    <h4 class="mb-0"><?= number_format($data_user->cholesterol); ?> mg</h4>
                                </div>
                                <div class="ms-auto fs-4 text-orange">
                                    <i class="bi bi-bar-chart-line-fill"></i>
                                </div>
                            </div>
                            <div style="text-align: left; width: 288px; height: 90px; padding-left:40%">
                                <img src="<?= base_url() ?>assets\images\chole.png" alt="">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 overflow-hidden">
                        <div class="card-body" style="position: relative;">
                            <div class="d-flex align-items-center mb-2">
                                <div class="">
                                    <p class="mb-1">Bloodglucose</p>
                                    <h4 class="mb-0"><?= number_format($data_user->bloodglucose); ?> mg/dL</h4>
                                </div>
                                <div class="ms-auto fs-4 text-orange">
                                    <i class="bi bi-bar-chart-line-fill"></i>
                                </div>
                            </div>
                            <div style="text-align: left; width: 288px; height: 90px; padding-left:40%">
                                <img src="<?= base_url() ?>assets\images\bloodglucose.png" alt="">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
</div>

<?php
if ($this->session->userdata("role") != 1) {
?>
    <!-- chart -->
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 row-cols-xxl-4">
        <div class="col">
            <div class="card radius-10 overflow-hidden">
                <div class="card-body">
                    <div class="d-flex align-items-center mb-2">
                        <div class="">
                            <p class="mb-1">Heart Rate</p>
                        </div>
                        <div class="ms-auto fs-4 text-primary">
                        </div>
                    </div>
                    <div id="chart1"></div>
                </div>

            </div>
        </div>
        <div class="col">
            <div class="card radius-10 overflow-hidden">
                <div class="card-body">
                    <div class="d-flex align-items-center mb-2">
                        <div class="">
                            <p class="mb-1">Blood Pressure</p>
                        </div>
                        <div class="ms-auto fs-4 text-success">
                        </div>
                    </div>
                    <div id="chart2"></div>
                </div>

            </div>
        </div>
        <div class="col">
            <div class="card radius-10 overflow-hidden">
                <div class="card-body">
                    <div class="d-flex align-items-center mb-2">
                        <div class="">
                            <p class="mb-1">Cholesterol</p>
                        </div>
                        <div class="ms-auto fs-4 text-purple">
                        </div>
                    </div>
                    <div id="chart3"></div>
                </div>

            </div>
        </div>
        <div class="col">
            <div class="card radius-10 overflow-hidden">
                <div class="card-body">
                    <div class="d-flex align-items-center mb-2">
                        <div class="">
                            <p class="mb-1">Bloodglucose</p>
                        </div>
                        <div class="ms-auto fs-4 text-orange">
                        </div>
                    </div>
                    <div id="chart4"></div>
                </div>

            </div>
        </div>
    </div><!--end row-->
    <!-- chart -->

    <!-- History Diagnoese -->
    <div class="row">
        <div class="col-xl-7 mx-auto">
            <h6 class="mb-0 text-uppercase">History Diagnose</h6>
            <hr>
            <div class="card">
                <div class="card-body">
                    <table class="table align-middle mb-0">
                        <thead class="table-light">
                            <tr>
                                <th>Consult Date</th>
                                <th>Doctor</th>
                                <th>View Detail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($history_consul->result() as $r) {
                                echo '<tr>
                                    <td>' . date("l, d M Y", strtotime($r->date_consul)) . '</td>
                                    <td>' . $r->nama_dokter . '</td>
                                    <td><a href="#"  data-bs-toggle="modal" data-bs-target="#exampleLargeModal3" style="cursor: pointer; color:orange" onclick="get_history(\'' . encrypt_url($r->id) . '\')"><i class="bi bi-eye"></i></a></td>
                               </tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- History Diagnoese -->
<?php
}
?>
<!-- modal -->
<div class="modal fade" id="exampleLargeModal3" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="bi bi-person"></i> Diagnose Result</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <div id="isi_disini"></div>
                    </div>
                </div>
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
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <?= form_close(); ?>
                    </div>
                </div>
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
                        <?= form_open(base_url('C_Profile/update_profile_patient'), "id='formuser'") ?>
                        <div class="card shadow-none border">
                            <div class="card-header">
                                <h6 class="mb-0">USER INFORMATION</h6>
                            </div>
                            <div class="card-body">
                                <div class="row g-3">


                                    <div class="col-6">
                                        <label class="form-label">Born</label>
                                        <input type="date" class="form-control" name="born" value="<?= $data_user->born ?>" required>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Sex</label>
                                        <!-- <input type="text" class="form-control" value=""> -->
                                        <select name="sex" id="sex" class="form-control" required>
                                            <option value="<?= $data_user->sex ?>"><?= $data_user->sex ?></option>
                                            <option value="Man">Man</option>
                                            <option value="Woman">Woman</option>
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Weight</label>
                                        <input type="text" class="form-control" value="<?= number_format($data_user->weight); ?>" name="weight">
                                    </div>
                                    <div class="col-6">
                                        <label class="form-label">Height</label>
                                        <input type="text" class="form-control" value="<?= number_format($data_user->height); ?>" name="height">
                                    </div>
                                    <?php
                                    if ($this->session->userdata("role") != 1) {
                                    ?>
                                        <div class="col-6">
                                            <label class="form-label">Blood Pressure</label>
                                            <input type="text" class="form-control" value="<?= number_format($data_user->bloodpressure); ?>" name="bloodpressure">
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Heart Rate</label>
                                            <input type="text" class="form-control" value="<?= number_format($data_user->heartrate); ?>" name="heartrate">
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Cholesterol</label>
                                            <input type="text" class="form-control" value="<?= number_format($data_user->cholesterol); ?>" name="cholesterol">
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">Bloodglucose</label>
                                            <input type="text" class="form-control" value="<?= number_format($data_user->bloodglucose); ?>" name="bloodglucose">
                                        </div>
                                    <?php
                                    }
                                    ?>
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

<script src="<?= base_url(); ?>assets/js/app.js"></script>

<script>
    $(function() {
        "use strict";

        // chart 1
        var options = {
            series: [{
                name: "Messages",
                data: <?= json_encode($isi_chart["heartrate"]); ?>
            }],
            chart: {
                foreColor: '#9a9797',
                type: "area",
                //width: 130,
                height: 50,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#3461ff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 0,
                colors: ["#3461ff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "35%",
                    endingShape: "rounded"
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2.5,
                curve: "smooth"
            },
            colors: ["#3461ff"],
            xaxis: {
                categories: ["Jan"]
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: !1
                },
                y: {
                    title: {
                        formatter: function(e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#chart1"), options);
        chart.render();


        // chart 2
        var options2 = {
            series: [{
                name: "Messages",
                data: <?= json_encode($isi_chart["bloodpressure"]); ?>
            }],
            chart: {
                foreColor: '#9a9797',
                type: "area",
                //width: 130,
                height: 50,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#3461ff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 0,
                colors: ["#3461ff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "35%",
                    endingShape: "rounded"
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2.5,
                curve: "smooth"
            },
            colors: ["#3461ff"],
            xaxis: {
                categories: ["Jan"]
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: !1
                },
                y: {
                    title: {
                        formatter: function(e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };

        var chart2 = new ApexCharts(document.querySelector("#chart2"), options2);
        chart2.render();

        // chart 3
        var options3 = {
            series: [{
                name: "Messages",
                data: <?= json_encode($isi_chart["cholesterol"]); ?>
            }],
            chart: {
                foreColor: '#9a9797',
                type: "area",
                //width: 130,
                height: 50,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#3461ff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 0,
                colors: ["#3461ff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "35%",
                    endingShape: "rounded"
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2.5,
                curve: "smooth"
            },
            colors: ["#3461ff"],
            xaxis: {
                categories: ["Jan"]
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: !1
                },
                y: {
                    title: {
                        formatter: function(e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };

        var chart3 = new ApexCharts(document.querySelector("#chart3"), options3);
        chart3.render();

        // chart 3
        var options4 = {
            series: [{
                name: "Messages",
                data: <?= json_encode($isi_chart["bloodglucose"]); ?>
            }],
            chart: {
                foreColor: '#9a9797',
                type: "area",
                //width: 130,
                height: 50,
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !1
                },
                dropShadow: {
                    enabled: 0,
                    top: 3,
                    left: 14,
                    blur: 4,
                    opacity: .12,
                    color: "#3461ff"
                },
                sparkline: {
                    enabled: !0
                }
            },
            markers: {
                size: 0,
                colors: ["#3461ff"],
                strokeColors: "#fff",
                strokeWidth: 2,
                hover: {
                    size: 7
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "35%",
                    endingShape: "rounded"
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2.5,
                curve: "smooth"
            },
            colors: ["#3461ff"],
            xaxis: {
                categories: ["Jan"]
            },
            tooltip: {
                theme: "dark",
                fixed: {
                    enabled: !1
                },
                x: {
                    show: !1
                },
                y: {
                    title: {
                        formatter: function(e) {
                            return ""
                        }
                    }
                },
                marker: {
                    show: !1
                }
            }
        };

        var chart4 = new ApexCharts(document.querySelector("#chart4"), options4);
        chart4.render();
    });
</script>

<script>
    function get_history($id) {
        $url = '<?php echo base_url(); ?>C_Profile/get_consul_byid?id=' + $id;
        console.log($url);
        $.ajax({
            type: 'GET',
            url: $url,
            success: function(val) {
                $('#isi_disini').html(val);
            }
        });
    }
</script>