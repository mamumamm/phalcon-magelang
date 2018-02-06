<section class="content-header">
    <h1>
      Data Tables
      <small>advanced tables</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Rekap Harian</a></li>
      <li><a href="#">Tables</a></li>
      <li class="active">Data tables</li>
    </ol>
  </section>


<!-- Main content -->
<section class="content">
    
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#tab_1" data-toggle="tab" aria-expanded="true">Pemasukan</a>
                </li>
                <li class="">
                    <a href="#tab_2" data-toggle="tab" aria-expanded="false">Pengeluaran</a>
                </li>
                <li class="">
                    <a href="#tab_3" data-toggle="tab" aria-expanded="false">Perkiraan Pemasukan</a>
                </li>
                <li class="">
                    <a href="#tab_4" data-toggle="tab" aria-expanded="false">Grafik</a>
                </li>

                <li class="pull-right">
                    <a href="#" class="text-muted">
                        <i class="fa fa-gear"></i>
                    </a>
                </li>
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
                                                <th>Tahun</th>
                                                <th>Pemasukan</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>

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
                                                <th>Tahun</th>
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
                                                <th>Tahun Cair</th>
                                                <th>Penghasilan</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
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
                <div class="tab-pane" id="tab_4">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Data Table With Full Features</h3>
                                </div>
                                <!-- Custom tabs (Charts with tabs)-->
                                <div class="nav-tabs-custom">
                                    <!-- Tabs within a box -->
                                        <ul class="nav nav-tabs pull-right">
                                            <li class="active"><a href="#revenue-chart" data-toggle="tab">Area</a></li>
                                            <li><a href="#revenue-chart2" data-toggle="tab">Donut</a></li>
                                            <li class="pull-left header"><i class="fa fa-inbox"></i> Sales</li>
                                        </ul>
                                    <div class="tab-content no-padding">
                                        <!-- Morris chart - Sales -->
                                        <div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;"></div>
                                        <div class="chart tab-pane" id="revenue-chart2" style="position: relative; height: 300px;"></div>
                                        
                                    </div>
                                </div>
                                <!-- /.nav-tabs-custom -->
                                
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
            </div>
            <!-- /.tab-content -->
        </div>
        <!-- nav-tabs-custom -->
    
</section>

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
                        <!-- <thead>
                            <tr>
                                <th class="kolom1">Akun ID</th>
                                <th class="kolom2">Nama Barang</th>
                                <th class="kolom3">JML Barang</th>
                                <th class="kolom4">Harga Satuan</th>
                                <th class="kolom5">Pelaku</th>
                                <th class="kolom6">Tanggal</th>
                                <th class="kolom7">Total Harga</th>
                                <th class="kolom8">Keterangan</th>

                            </tr> -->
                        </thead>
                        <tbody >

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


<script>
    $(document).ready(function() {
        var dataTable = $('#pengeluaran').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: "Rekaptahunan/getAjaxPengeluaran",
                type: "post",
            }
        });
    });
    $(document).ready(function() {
        var dataTable = $('#pemasukan').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: "Rekaptahunan/getAjaxPemasukan",
                type: "post",
            }
        });
    });
    $(document).ready(function() {
        var dataTable = $('#penghasilan').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                url: "Rekaptahunan/getAjaxPenghasilan",
                type: "post",
            }
        });
    });

    // PENGELUARAN
    function show_data_pengeluaran(Tahun) {
        $('.modal-title').text('Pengeluaran  ' + Tahun);
        $('.btnAction').attr('class',"btn btn-outline btnAction");
        // $('.kolom1').text('Akun ID');
        // $('.kolom2').text('Nama Barang');
        // $('.kolom3').text('Jumlah Barang');
        // $('.kolom4').text('Harga Satuan');
        // $('.kolom5').text('Pelaku');
        // $('.kolom6').text('Tanggal');
        // $('.kolom7').text('Total Harga');
        // $('.kolom8').text('Keterangan');


        $.ajax({
            method: "POST",
            dataType: "json",
            url: "{{url('Rekapharian/getViewPengeluaran')}}/" + Tahun,
            data: $('form.addUser').serialize(),
            success: function(response) {
                var trHTML = '';
                trHTML += 
                '<thead><tr><th>Akun ID</th><th>Nama Barang</th><th>JML Barang</th><th>Harga Satuan</th><th>Pelaku</th><th>Tanggal</th><th>Total Harga</th><th>Keterangan</th></tr></thead>';
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
                $('#data_keuharian').html(trHTML);
                // $('#btn-close').on('click', function(){
                //     $('#data_keuharian tr>td').remove();
                // });
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

    // PEMASUKAN
    function show_data_pemasukan(Hari) {
        $('.modal-title').text('Pemasukan  ' + Tahun);
        $('.btnAction').attr('class',"btn btn-outline btnAction");
        // $('.kolom1').text('ID');
        
        // $('.kolom3').text('Pelaku');
        // $('.kolom4').text('Pemasukan');
        // $('.kolom2, .kolom5, .kolom6, .kolom7, .kolom8').hide();
        // $('#btn-close').on('click', function(){
        //             $('.kolom2, .kolom5, .kolom6, .kolom7, .kolom8').show();
        //         });
       
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "{{url('Rekapharian/getViewPemasukan')}}/" + Tahun,
            data: $('form.addUser').serialize(),
            success: function(response) {
                var trHTML = '';
                trHTML += '<thead><tr><th>ID</th><th>Pelaku</th><th>Pengeluaran</th></tr></thead>';
                $.each(response, function (i, item) {
                    trHTML += '<tr><td>' + item.id + '</td><td>' + 
                        
                    item.pelaku + '</td><td>' + 
                    
                    item.debit + '</td></tr>';
                });
                $('#data_keuharian').html(trHTML);
                // $('#btn-close').on('click', function(){
                //     $('#data_keuharian tr>td').remove();
                // });
            }
        });
    }

    // PENGHASILAN
    function show_data_penghasilan(tahun_cair) {
        $('.modal-title').text('penghasilan  ' + tahun_cair);
        $('.btnAction').attr('class',"btn btn-outline btnAction");
        // $('.kolom1').text('Pemasukan dari');
        // $('.kolom2').text('Nominal');
        // $('.kolom3').text('Tanggal Cair');
        // $('.kolom4').text('Keterangan');
        // $('.kolom5, .kolom6, .kolom7, .kolom8').hide();
        // $('#btn-close').on('click', function(){
        //             $('.kolom5, .kolom6, .kolom7, .kolom8').show();
        //         });
        
        $.ajax({
            method: "POST",
            dataType: "json",
            url: "{{url('Rekapharian/getViewPenghasilan')}}/" + tahun_cair,
            data: $('form.addUser').serialize(),
            success: function(response) {
                var trHTML = '';
                trHTML +=
                '<thead><tr><th>Pemasukan Dari</th><th>Nominal</th><th>Tanggal Perkiraan</th><th>Keterangan</th></tr></thead>';
                $.each(response, function (i, item) {
                    trHTML += '<tr><td>' + item.pemasukan_dari + '</td><td>' + 
                    item.nominal + '</td><td>' + 
                    item.tgl_perkiraan + '</td><td>' + 
                    
                    item.judul + '</td></tr>';
                });
                $('#data_keuharian').html(trHTML);
                // $('#btn-close').on('click', function(){
                //     $('#data_keuharian tr>td').remove();
                // });
            }
        });
    }

    // GRAFIK
    // LINE CHART
    //  $.ajax({
    //      method : "GET",
    //      dataType: "html",
    //      url : "{{url('Graphic/getGraphic')}}",
    //      success: function(result){
    //         var line = new Morris.Line({
    //             element: 'line-chart',
    //             resize: true,
    //             data: JSON.parse(result),
    //             xkey: 'tanggal',
    //             ykeys: ['nominal'],
    //             labels: ['nominal'],
    //             parseTime: false,
    //             lineColors: ['#3c8dbc'],
    //             hideHover: 'auto'
    //         });
    //      }
    //  });

     $.ajax({
         method : "GET",
         dataType: "html",
         url : "{{url('Graphic/getGraphic')}}",
         success: function(result){
            var area = new Morris.Area({
                element   : 'revenue-chart',
                resize    : true,
                data      : JSON.parse(result),
                xkey      : 'Tanggal',
                ykeys     : ['Pemasukan', 'Pengeluaran'],
                labels    : ['Pemasukan', 'Pengeluaran'],
                parseTime : false,
                lineColors: ['#a0d0e0', '#3c8dbc'],
                hideHover : 'auto'
            });
         }
     });

    //  $.ajax({
    //      method : "GET",
    //      dataType: "html",
    //      url : "{{url('Graphic/getGraphic')}}",
    //      success: function(result){
    //         var area = new Morris.Area({
    //             element   : 'revenue-chart2',
    //             resize    : true,
    //             data      : JSON.parse(result),
    //             xkey      : 'Tanggal',
    //             ykeys     : ['Pemasukan', 'Pengeluaran'],
    //             labels    : ['Pemasukan', 'Pengeluaran'],
    //             parseTime : false,
    //             lineColors: ['#a0d0e0', '#3c8dbc'],
    //             hideHover : 'auto'
    //         });
    //      }
    //  });
    
                
</script>