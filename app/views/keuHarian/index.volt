
  <section class="content-header">
    <h1>
      Data Tables
      <small>advanced tables</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Keuangan Harian</a></li>
      <li><a href="#">Tables</a></li>
      <li class="active">Data tables</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
      <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-default" onclick="return send_data_add();">
        Add Keuangan Harian
      </button>
      <br><br>
    <div class="row">
      <div class="col-sm-12">
        <div class="box">
          <!-- /.box-header -->
          <div class="box-body">
            <table id="data_Keuharian" class="table table-bordered table-striped listKeuHarian display responsive no-wrap">
              <thead>
              <tr>
                <th>No.</th>
                <th>Cabang</th>
                <th>Tanggal</th>
                <th>Nama Barang</th>
                <th>Akun</th>
                <th>Jumlah Barang</th>
                <th>Harga Satuan</th>
                <th>Satuan Barang</th>
                <th>Total Harga</th>
                <th>Debit</th>
                <th>Kredit</th>
                <th>Keterangan</th>
                <th>Pelaku</th>
                <th>Action</th>
              </tr>
              </thead>
              <tbody id="listKeuHarian">
          
              </tbody>
            </table>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
  <div class="modal fade" id="modal-default">
    <div class="modal-dialog">
      <div class="modal-content">
        <form class="addKeuHarian" action="Keuharian/add" method="POST">
          <div class="modal-header">
            <button type="button" class="close close-modal" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">
            <!-- sengaja dikosongkan, hanya pake jQuery -->
            </h4>
          </div>
          <div class="modal-body">
            <div class="input-group-id">
                <input class="form-control id" name="id" type="hidden" id="id">
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-building"></i></span>
                <select class="form-control" name="cabang_id">
                   {{ Helpers.dataCabang()}}
                </select>
              </div>
              <br>
              <div class="input-group date">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input type="date" class="form-control pull-right" name="tanggal">
                <!-- <input type="text" class="form-control pull-right" name="tanggal" id="datepicker" placeholder="tanggal"> -->
              </div>
              <br>
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-shopping-bag"></i></span>
                <input type="text" class="form-control" name="nama_barang" placeholder="Nama Barang">
              </div>
              <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-info-circle"></i></span>
                <select class="form-control" name="akun_id">
                   {{ Helpers.dataAkun()}}
                </select>
              </div>
              <br>
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-sort-alpha-asc"></i></span>
                <input type="text" class="form-control" name="jml_barang" placeholder="Jumlah Barang">
              </div>
              <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                <input type="text" class="form-control" name="harga_satuan" placeholder="Harga Satuan">
              </div>
              <br>
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-list-ul"></i></span>
                <select class="form-control" name="satuan_barang_id">
                   {{ Helpers.dataSatuanBarang()}}
                </select>
              </div>
              <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-btc"></i></span>
                <input type="text" class="form-control" name="total_harga" placeholder="Total Harga">
              </div>
              <br>
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-credit-card-alt"></i></span>
                <input type="text" class="form-control" name="debit" placeholder="Debit">
              </div>
              <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                <input type="text" class="form-control" name="kredit" placeholder="Kredit">
              </div>
              <br>
            </div>
            <div class="col-md-6">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-align-center"></i></span>
                <textarea class="form-control" rows="3" name="keterangan" placeholder="Keterangan"></textarea>
              </div>
              <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-blind"></i></span>
                <select class="form-control" name="user_id">
                   {{ Helpers.dataUser()}}
                </select>
              </div>
              <br>
            </div>
          </div>

          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary dropdown-toggle btnAction" onclick="return addKeuHarian();">
              <!-- isinya pake jQuery -->
            </button>
          </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

  <div class="modal modal-danger fade" id="modal-delete">
    <div class="modal-dialog">
      <div class="modal-content">
        <form class="deleteKeuHarian" action="Keuharian/deleteKeuHarian" method="POST">
          <input type="hidden" name="id" id="id_Keuharian" value="">
          <div class="modal-header">
            <button type="button" class="close close-modal" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">
            <!-- sengaja dikosongin, isinya pake jQuery -->
            </h4>
          </div>
          <div class="modal-body">
            <p>Hapus ?</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline pull-left close-modal" data-dismiss="modal">Close</button>
            <button type="button" class="btn btnAction" onclick="return deleteKeuharian();">
              <!-- isinya pake jQuery -->
            </button> 
          </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

{{ javascript_include("assets/bower_components/datatables.net/js/jquery.dataTables.min.js")}} {{ javascript_include("assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js")}}

<script>
function send_data_add(){
  $('.modal-title').text('Add Data');
  $('.btnAction').attr('onclick',"return addKeuHarian();");
  $('.btnAction').attr('class',"btn btn-primary btnAction");
  $('.btnAction').text('Add Data');
}

function addKeuHarian() {
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "{{url('keuharian/addKeuharian')}}",
      data: $('form.addKeuHarian').serialize(),
      success: function(res) {
          new PNotify({
              title: res.title,
              text: res.text,
              type: res.type,
              addclass: "stack-bottomright",
              buttons: {
                sticker: false
              }
          });
          $('.close-modal').click();
          $('#data_Keuharian').DataTable().ajax.reload();
      }
  });
}

function send_data_edit(id) {
  $('.modal-title').text('Edit Data ' + id);
  $('.btnAction').attr('onclick', "return editKeuharian();");
  $('.btnAction').attr('class', "btn btn-warning btnAction");
  $('.btnAction').text('Edit Data');

  $.ajax({
      method: "POST",
      dataType: "json",
      url: "{{url('Keuharian/getData')}}/" + id,
      data: $('form.addKeuHarian').serialize(),
      success: function(res) {
          $('input[name=id]').val(res.id);
          $('input[name=cabang_id]').val(res.cabang_id);
          $('input[name=tanggal]').val(res.tanggal);
          $('input[name=nama_barang]').val(res.nama_barang);
          $('input[name=akun_id]').val(res.akun_id);
          $('input[name=jml_barang').val(res.jml_barang);
          $('input[name=harga_satuan]').val(res.harga_satuan);
          $('input[name=satuan_barang_id]').val(res.satuan_barang_id);
          $('input[name=total_harga]').val(res.total_harga);
          $('input[name=debit]').val(res.debit);
          $('input[name=kredit]').val(res.kredit);
          $('input[name=keterangan]').val(res.keterangan);
          $('input[name=pelaku]').val(res.pelaku);
      }
  });
}

function editKeuHarian() {
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "{{url('Keuharian/editKeuharian')}}",
      data: $('form.addKeuHarian').serialize(),
      success: function(res) {
          new PNotify({
              title: res.title,
              text: res.text,
              type: res.type,
              addclass: "stack-bottomright",
              buttons : {
                sticker : false
              }
          });
          $('.close-modal').click();
          $('#data_Keuharian').DataTable().ajax.reload();
      }
  });
}

function send_data_delete(id){
  $('input[name=id]').val(id);
  $('.modal-title').text('Delete Data ' + id);
  $('.btnAction').attr('onclick',"return deleteKeuharian();");
  $('.btnAction').attr('class',"btn btn-outline btnAction");
  $('.btnAction').text('Delete Data');
}

function deleteKeuHarian() {
  $.ajax({
      method: "POST",
      dataType: "json",
      url: "{{url('Keuharian/deleteKeuharian')}}",
      data: $('form.deleteKeuHarian').serialize(),
      success: function(res) {
          new PNotify({
              title: res.title,
              text: res.text,
              type: res.type,
              addclass: "stack-bottomright",
              buttons: {
                sticker: false
              }
          });
          $('.close-modal').click();
          $('#data_Keuharian').DataTable().ajax.reload();      
        }
    });
  }

function listKeuHarian(){
  $.ajax({
    method: "GET",
    url: "{{ url('Keuharian/listKeuHarian') }}",
    dataType: "html",
    success: function(res){
      $('#listKeuHarian').html(res);
    }
  });
}

$(document).ready(function(){
  var dataTable = $('#data_Keuharian').DataTable({
    "processing" : false,
    "serverSide" : true,
    "ajax": {
      url: "Keuharian/getAjax",
      type: "post",
    }
  });
});
</script>