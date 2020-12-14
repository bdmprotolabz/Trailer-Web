<?php include_once 'header.php'; ?>


 <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Dashboard</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Library</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
              <?php if ($this->session->flashdata('success')) { ?>
             <div class="alert alert-danger" id="alert" align="center">
                <?php echo $this->session->flashdata('success'); ?>
                 </div>
        <?php } ?>

             <div class="container-fluid">
             

                  <div class="row">
                        <!-- Column -->
                      <!--   <div class="col-md-6 col-lg-2 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-cyan text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-view-dashboard"></i></h1>
                                    <h6 class="text-white">Dashboard</h6>
                                </div>
                            </div>
                        </div> -->
                        <!-- Column -->
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                          <a href="<?php echo base_url();?>dealer" style="color: #fff;">
                            <div class="card card-hover">
                                <div class="box bg-success text-center">
                                    <h1 class="font-light text-white"><i class="fa fa-eye"></i></h1>
                                    <h6 class="text-white">View Dealer</h6>
                                </div>
                            </div>
                        </a>
                        </div>
                         <!-- Column -->
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <a href="<?php echo base_url();?>add_dealer" style="color: #fff;">
                            <div class="card card-hover">
                                <div class="box bg-warning text-center">
                                    <h1 class="font-light text-white"><i class="fa fa-user-plus"></i></h1>
                                    <h6 class="text-white">Add Dealer</h6>
                                </div>
                            </div>
                        </a>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <a href="<?php echo base_url();?>driver" style="color: #fff;">
                            <div class="card card-hover">
                                <div class="box bg-danger text-center">
                                    <h1 class="font-light text-white"><i class="fa fa-eye"></i></h1>
                                    <h6 class="text-white">View Driver</h6>
                                </div>
                            </div>
                        </a>
                        </div>
                        <!-- Column -->
                        <div class="col-md-6 col-lg-3 col-xlg-3">
                            <a href="<?php echo base_url();?>add_driver" style="color: #fff;">
                            <div class="card card-hover">
                                <div class="box bg-info text-center">
                                    <h1 class="font-light text-white"><i class="fa fa-user-plus"></i></h1>
                                    <h6 class="text-white">Add driver</h6>
                                </div>
                            </div>
                        </a>
                        </div>
                        <!-- Column -->
                        <!-- Column -->
                 <!-- <div class="col-md-6 col-lg-4 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-danger text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-receipt"></i></h1>
                                    <h6 class="text-white">Forms</h6>
                                </div>
                            </div>
                        </div>
                        <!-- Column --
                        <div class="col-md-6 col-lg-2 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-info text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-relative-scale"></i></h1>
                                    <h6 class="text-white">Buttons</h6>
                                </div>
                            </div>
                        </div>
                         <!-- Column --
                        <div class="col-md-6 col-lg-2 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-cyan text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-pencil"></i></h1>
                                    <h6 class="text-white">Elements</h6>
                                </div>
                            </div>
                        </div>
                        <!-- Column --
                        <div class="col-md-6 col-lg-2 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-success text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-calendar-check"></i></h1>
                                    <h6 class="text-white">Calnedar</h6>
                                </div>
                            </div>
                        </div>
                        <!-- Column --
                        <div class="col-md-6 col-lg-2 col-xlg-3">
                            <div class="card card-hover">
                                <div class="box bg-warning text-center">
                                    <h1 class="font-light text-white"><i class="mdi mdi-alert"></i></h1>
                                    <h6 class="text-white">Errors</h6>
                                </div>
                            </div>
                        </div>
                        <!-- Column -->
                    </div>

                      <!-- Sales chart -->
                    <!-- ============================================================== -->
                    <!-- <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-md-flex align-items-center">
                                        <div>
                                            <h4 class="card-title">Site Analysis</h4>
                                            <h5 class="card-subtitle">Overview of Latest Month</h5>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <!-- column --
                                        <div class="col-lg-9">
                                            <div class="flot-chart">
                                                <div class="flot-chart-content" id="flot-line-chart"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-user m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">2540</h5>
                                                       <small class="font-light">Total Users</small>
                                                    </div>
                                                </div>
                                                 <div class="col-6">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-plus m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">120</h5>
                                                       <small class="font-light">New Users</small>
                                                    </div>
                                                </div>
                                                <div class="col-6 m-t-15">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-cart-plus m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">656</h5>
                                                       <small class="font-light">Total Shop</small>
                                                    </div>
                                                </div>
                                                 <div class="col-6 m-t-15">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-tag m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">9540</h5>
                                                       <small class="font-light">Total Orders</small>
                                                    </div>
                                                </div>
                                                <div class="col-6 m-t-15">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-table m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">100</h5>
                                                       <small class="font-light">Pending Orders</small>
                                                    </div>
                                                </div>
                                                <div class="col-6 m-t-15">
                                                    <div class="bg-dark p-10 text-white text-center">
                                                       <i class="fa fa-globe m-b-5 font-16"></i>
                                                       <h5 class="m-b-0 m-t-5">8540</h5>
                                                       <small class="font-light">Online Orders</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- column --
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    <!-- ============================================================== -->
                    <!-- Sales chart -->
                    <div class="row">
                       <div class="col-xl-6 col-lg-6">
                      <!-- Bar Chart -->
                                <div class="card shadow mb-4">
                                  <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Dealer Membership Sales </h6>
                                 <!--  <select class="float-lg-right  btn btn-sm btn-primary shadow-sm" id='selectReport' >
                                     <option value='1'>Monthly Report </option>
                                      <option value='2'>Financier Wise</option>
                                      <option value='3'>Scheme Wise</option>
                                      <option value='4'>Location Wise</option>
                                  </select> -->
                                  </div>
                                  <div class="card-body">
                                         <div id="columnchart_material" style='height:280px' ></div>
                                   
                                    <hr>
                                 
                                  </div>
                                </div>
                       </div>
                        <div class="col-xl-6 col-lg-6">
                      <!-- Bar Chart -->
                                <div class="card shadow mb-4">
                                  <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Driver Membership Sales </h6>
                                 <!--  <select class="float-lg-right  btn btn-sm btn-primary shadow-sm" id='selectReport' >
                                     <option value='1'>Monthly Report </option>
                                      <option value='2'>Financier Wise</option>
                                      <option value='3'>Scheme Wise</option>
                                      <option value='4'>Location Wise</option>
                                  </select> -->
                                  </div>
                                  <div class="card-body">
                                         <div id="driver" style='height:280px' ></div>
                                   
                                    <hr>
                                 
                                  </div>
                                </div>
                        </div>

                         <div class="col-xl-6 col-lg-6">
                      <!-- Bar Chart -->
                                <div class="card shadow mb-4">
                                  <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Ad's Sales </h6>
                                
                                  </div>
                                  <div class="card-body">
                                         <div id="ads" style='height:280px' ></div>
                                   
                                    <hr>
                                 
                                  </div>
                                </div>
                        </div>

                        <div class="col-xl-6 col-lg-6">
                      <!-- Bar Chart -->
                                <div class="card shadow mb-4">
                                  <div class="card-header py-3">
                                    <div class="m-0 font-weight-bold text-primary"><strong>AD's Info</strong></div>
                                
                                  </div>
                                  <div class="card-body">
                                          <?php if ($this->session->flashdata('success')) { ?>
                                               <div class="alert alert-success" id="alert" align="center">
                                                  <?php echo $this->session->flashdata('success'); ?>
                                                   </div>
                                          <?php } ?>
                                                                    
                                        <form action="<?php echo base_url();?>welcome/update_price"  method="post" style='height:280px' >
                                          <div class="row">
                                              <div class="col-sm-12">
                                                <?php foreach($ads_price as $row)
                                                      {?>
                                                  <div class="form-group" style=" text-align: center;">
                                                  <label for="name"><strong>Set <?= $row->click?> click price $: </strong></label>
                                                  <input class="form-control" id="name" type="number" name="price" required value="<?= $row->price?>" placeholder="$10">
                                                  <input class="form-control"  type="hidden" name="id" required value="<?= $row->id?>">
                                                  <?php
                                          }?>
                                                </div>
                                              </div>
                                          </div>
                                     
                                         
                                          <div class="row">
                                              <div class="col-sm-12" style=" margin: 0px auto; text-align: center;">
                                                 
                                                     <button type="Submit" id="Submit"  class="btn btn-primary ">Update</button>
                                                
                                              </div>
                                          </div>
                                    </form>
                                   
                                    <hr>
                                 
                                  </div>
                                </div>
                        </div>
                    </div>    

             </div>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     
   <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    var data = google.visualization.arrayToDataTable([
         ['Time', 'Weekly','Monthly', 'Yearly'],
          ['Amount', <?php echo $weekly;?> ,<?php echo $monthdate;?>, <?php echo $yeardate;?>],
         
        ]);
/*         var data = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["Copper", 8.94, "#b87333"],
          ["Silver", 10.49, "silver"],
          ["Gold", 19.30, "gold"],
          ["Platinum", 21.45, "color: #e5e4e2"]
        ]);
  
*/
        var options = {
          chart: {
           title: "Sales Dealer in USD",
        // width: 600,
        //height: 400,
         colors: ['red','green','gold','gold'],
        bar: {groupWidth: "50%"},
        legend: { position: "none" },
          }

          
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
       

        chart.draw(data, google.charts.Bar.convertOptions(options));
       
      }
    </script>
 <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    var data = google.visualization.arrayToDataTable([
         ['Time', 'Weekly','Monthly', 'Yearly'],
          ['Amount', <?php echo $driverweekly;?> ,<?php echo $drivermonthdate;?>, <?php echo $driveryeardate;?>],
         
        ]);
/*         var data = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["Copper", 8.94, "#b87333"],
          ["Silver", 10.49, "silver"],
          ["Gold", 19.30, "gold"],
          ["Platinum", 21.45, "color: #e5e4e2"]
        ]);
  
*/
        var options = {
          chart: {
           title: "Sales driver in USD",
        // width: 600,
        //height: 400,
         colors: ['red','green','gold','gold'],
        bar: {groupWidth: "50%"},
        legend: { position: "none" },
          }

          
        };

        var chart2 = new google.charts.Bar(document.getElementById('driver'));

      
        chart2.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
    var data = google.visualization.arrayToDataTable([
         ['Time', 'Weekly','Monthly', 'Yearly'],
          ['Amount', <?php echo $adsweekly;?> ,<?php echo $adsmonthdate;?>, <?php echo $adsyeardate;?>],
         
        ]);
/*         var data = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["Copper", 8.94, "#b87333"],
          ["Silver", 10.49, "silver"],
          ["Gold", 19.30, "gold"],
          ["Platinum", 21.45, "color: #e5e4e2"]
        ]);
  
*/
        var options = {
          chart: {
           title: "Sales Ad's in USD",
        // width: 600,
        //height: 400,
         colors: ['red','green','gold','gold'],
        bar: {groupWidth: "50%"},
        legend: { position: "none" },
          }

          
        };

        var chart = new google.charts.Bar(document.getElementById('ads'));
       

        chart.draw(data, google.charts.Bar.convertOptions(options));
       
      }
    </script>
<?php include_once 'footer.php'; ?>