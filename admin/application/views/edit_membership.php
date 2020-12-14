<?php include_once 'header.php'; ?>

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Edit Mambership Plan</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Edit Mambership Plan</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row" style=" margin: 0px auto;">
                   

                  <style type="text/css">
                      .abd {
                             width: 70%; 
                            color: black; 
                            margin: 0px auto !important; 
                            background: #fff; 
                            padding: 10px 20px;
                          }
                  </style>
                  <?php if ($this->session->flashdata('success')) { ?>
                       <div class="alert alert-success" id="alert" align="center">
                          <?php echo $this->session->flashdata('success'); ?>
                           </div>
                  <?php } ?>
                <div class="col-lg-12" >
                  <div class="abd">
                    <div class="">
                        <div class="card-header"><strong>Edit Mambership Info</strong></div>
                         <div class="card-body">
                          <?php foreach($data as $row)
                              {?>
                              <form action="<?php echo site_url('Welcome/update_membership'); ?>" method="post" >
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Mambership Type</label>
                                         <input class="form-control" id="type" readonly name="type" type="text" value="<?php echo $row->type; ?>" required placeholder="Enter Prices">
                                       
                                        <!-- <select id="type" class="form-control" readonly name="type" required>
                                             <option value="<?php echo $row->type; ?>"><?php echo $row->type; ?></option>
                                              <option value="1 Month">1 Month</option>
                                              <option value="3 Month">3 Month</option>
                                              <option value="6 Month">6 Month</option>
                                              <option value="12 Month">12 Month</option>
                                       </select> -->
                                      </div>
                                    </div>
                                </div>
<input class="form-control" id="ccnumber" name="id" type="hidden" value="<?php echo $row->id; ?>" required placeholder="Enter Prices">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Prices</label>
                                        <input class="form-control" id="ccnumber" name="Prices" type="text" value="<?php echo $row->price; ?>" required placeholder="Enter Prices">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Visible (In App)</label>
                                          <select id="type" class="form-control" readonly name="status" required>
                                             <option value="<?php echo $row->status; ?>"><?php  if($row->status==1){echo "Yes"; } else{echo "No"; } ?></option>
                                              <option value="1">Yes</option>
                                              <option value="2">No</option>
                                          </select> 
                                        </div>
                                    </div>
                                </div>
<?php }?>
                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" class="btn btn-primary float-right">Submit</button>
                                       </div>
                                        <div class="col-sm-6 float-left">
                                            <a type="button" href="<?php echo base_url();?>membership" class="btn btn-primary">Back</a>
                                        </div>
                                    </div>
                                </div>
                          </form>

                        </div>
                    </div>
                  </div>  
                </div>





                </div>
            </div>  
          


<?php include_once 'footer.php'; ?>