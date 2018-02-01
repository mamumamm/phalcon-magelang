<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Tables
        <small>advanced tables</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Rekap Bulanan</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">Pemasukan</a></li>
                <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Pengeluaran</a></li>
                <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">Perkiraan Pemasukan</a></li>
                <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">  
                <div class="tab-pane active" id="tab_1">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Table With Full Features</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="pemasukan" class="table table-bordered table-striped listUser display responsive no-wrap">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Bulan</th>
                                                <th>Pemasukan</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                        </0pxtbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
                <!-- /.tab-pane -->

                <div class="tab-pane" id="tab_2">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Table With Full Features</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="pengeluaran" class="table table-bordered table-striped listUser display responsive no-wrap">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Bulan</th>
                                                <th>Pengeluaran</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                        </0pxtbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
                <!-- /.tab-pane -->

                <div class="tab-pane" id="tab_3">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Table With Full Features</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="penghasilan" class="table table-bordered table-striped listUser display responsive no-wrap">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Bulan Cair</th>
                                                <th>Penghasilan</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                        </0pxtbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
                <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
        </div>
        <!-- nav-tabs-custom -->
    
</section>
<!-- /.content -->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close close-modal" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">VIEW PENGELUARAN</h4>
            </div>
            <div class="modal-body">
                <div class="box-body">
                    <table id="data_keuharian" class="table table-bordered table-striped listUser display responsive no-wrap">
                        <thead>
                            <tr>
                                <th class="kolom1">Akun ID</th>
                                <th class="kolom2">Nama Barang</th>
                                <th class="kolom3">JML Barang</th>
                                <th class="kolom4">Harga Satuan</th>
                                <th class="kolom5">Pelaku</th>
                                <th class="kolom6">Tanggal</th>
                                <th class="kolom7">Total Harga</th>
                                <th class="kolom8">Keterangan</th>

                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
                <!-- /.box-body -->

            </div>
            <div class="modal-footer">
                <button id="btn-close" type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- Modal Add User -->



<!-- DataTables -->

<script>

    // Pengeluaran
$(document).ready(function() {
    var dataTable = $('#pengeluaran').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: "Rekapbulanan/getAjaxPengeluaran",
            type: "post",
        }
    });
});

function show_data_pengeluaran(Bulan) {
    $('.modal-title').text('Pengeluaran  ' + Bulan);
    $('.btnAction').attr('class',"btn btn-outline btnAction");
    $('.kolom1').text('Akun ID');
    $('.kolom2').text('Nama Barang');
    $('.kolom3').text('Jumlah Barang');
    $('.kolom4').text('Harga Satuan');
    $('.kolom5').text('Pelaku');
    $('.kolom6').text('Tanggal');
    $('.kolom7').text('Total Harga');
    $('.kolom8').text('Keterangan');

    $.ajax({
        method: "POST",
        dataType: "json",
        url: "{{url('Rekapbulanan/getViewPengeluaran')}}/" + Bulan,
        data: $('form.addUser').serialize(),
        success: function(response) {
            var trHTML = '';
            $.each(response, function (i, item) {
                trHTML += '<tr><td>' + item.akun_id + '</td><td>' + 
                item.nama_barang + '</td><td>' + 
                item.jml_barang + '</td><td>' + 
                item.harga_satuan + '</td> <td>' + 
                item.pelaku + '</td><td>' + 
                item.tanggal + '</td><td>' + 
                item.total_harga + '</td><td>' + 
                item.keterangan + '</td></tr>';
            });
            $('#data_keuharian').append(trHTML);
            $('#modal-default').on('click', function(){
                $('#data_keuharian tr>td').remove();
            });
            // var x;
            // $('#btn-close').click(function(){
            //     x = $('#data_keuharian tr>td').detach();
            // });
            // $('#btn-view').click(function(){
            //     x = $('#data_keuharian tr>td').prepend(x);
            // });
        }
    });
}

    // Pemasukan
$(document).ready(function() {
    var dataTable = $('#pemasukan').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: "Rekapbulanan/getAjaxPemasukan",
            type: "post",
        }
    });
});
function show_data_pemasukan(Bulan) {
    $('.modal-title').text('Pemasukan  ' + Bulan);
    $('.btnAction').attr('class',"btn btn-outline btnAction");
    $('.kolom1').text('ID');
    
    $('.kolom3').text('Pelaku');
    $('.kolom4').text('Pemasukan');
    $('.kolom2, .kolom5, .kolom6, .kolom7, .kolom8').hide();
    
    $.ajax({
        method: "POST",
        dataType: "json",
        url: "{{url('Rekapbulanan/getViewPemasukan')}}/" + Bulan,
        data: $('form.addUser').serialize(),
        success: function(response) {
            var trHTML = '';
            $.each(response, function (i, item) {
                trHTML += '<tr><td>' + item.id + '</td><td>' + 
                    
                item.pelaku + '</td><td>' + 
                
                item.debit + '</td></tr>';
            });
            $('#data_keuharian').append(trHTML);
            $('#modal-default').on('click', function(){
                $('#data_keuharian tr>td').remove();
            });
        }
    });
}

    // Penghasilan
$(document).ready(function() {
    var dataTable = $('#penghasilan').DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": {
            url: "Rekapbulanan/getAjaxPenghasilan",
            type: "post",
        }
    });
});
function show_data_penghasilan(bulan_cair) {
    $('.modal-title').text('penghasilan  ' + bulan_cair);
    $('.btnAction').attr('class',"btn btn-outline btnAction");
    $('.kolom1').text('Pemasukan dari');
    $('.kolom2').text('Nominal');
    $('.kolom3').text('Tanggal Cair');
    $('.kolom4').text('Keterangan');
    $('.kolom5, .kolom6, .kolom7, .kolom8').hide();
    
    $.ajax({
        method: "POST",
        dataType: "json",
        url: "{{url('Rekapbulanan/getViewPenghasilan')}}/" + bulan_cair,
        data: $('form.addUser').serialize(),
        success: function(response) {
            var trHTML = '';
            $.each(response, function (i, item) {
                trHTML += '<tr><td>' + item.pemasukan_dari + '</td><td>' + 
                item.nominal + '</td><td>' + 
                item.tgl_perkiraan + '</td><td>' + 
                
                item.judul + '</td></tr>';
            });
            $('#data_keuharian').append(trHTML);
            $('#modal-default').on('click', function(){
                $('#data_keuharian tr>td').remove();
            });
        }
    });
}

</script>