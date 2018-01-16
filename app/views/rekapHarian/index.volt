<div class="col-md-12">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">Pemasukan</a></li>
                <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Pengeluaran</a></li>
                <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">RAB</a></li>
                <li class=""><a href="#tab_4" data-toggle="tab" aria-expanded="false">Perkiraan Pemasukan</a></li>
                <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    Dropdown <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                </ul>
                </li>
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
                                            <th>Hari</th>
                                            <th>Pemasukan</th>
                                            
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
                                            <th>Hari</th>
                                            <th>Pengeluaran</th>
                                            
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
                                <table id="rab" class="table table-bordered table-striped listUser display responsive no-wrap">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>ID</th>
                                            <th>Periode</th>
                                            <th>Nama Barang</th>
                                            <th>Akun ID</th>
                                            <th>Jumlah Barang</th>
                                            <th>Harga Satuan</th>
                                            <th>Satuan Barang ID</th>
                                            <th>Total Harga</th>
                                            <th>Keterangan</th>
                                            <th>Cabang Id</th>
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
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="penghasilan" class="table table-bordered table-striped listUser display responsive no-wrap">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Tanggal Cair</th>
                                            <th>Penghasilan</th>
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
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
        </div>
        <script>
            $(document).ready(function() {
                var dataTable = $('#rab').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        url: "Rekapharian/getAjax",
                        type: "post",
                    }
                });
            });
            $(document).ready(function() {
                var dataTable = $('#pengeluaran').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        url: "Pengeluaran/getAjax",
                        type: "post",
                    }
                });
            });
            $(document).ready(function() {
                var dataTable = $('#pemasukan').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        url: "Pemasukan/getAjax",
                        type: "post",
                    }
                });
            });
            $(document).ready(function() {
                var dataTable = $('#penghasilan').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        url: "Penghasilan/getAjax",
                        type: "post",
                    }
                });
            });
        </script>