<section class="content">
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
</section>

<script>
    //  // LINE CHART
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