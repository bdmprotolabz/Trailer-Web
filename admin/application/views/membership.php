<?php include_once 'header.php'; ?>

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Add Membership Plan</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add Membership Plan</li>
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
                        <div class="card-header"><strong>Membership Info</strong></div>
                         <div class="card-body">
                              <form action="<?php echo site_url('Welcome/aadd_membership'); ?>" method="post" >
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Membership Type</label>
                                        <select id="type" class="form-control" name="type" required>
                                             <option value="">Select type</option>
                                              <option value="1 Month">1 Month</option>
                                              <option value="3 Month">3 Months</option>
                                              <option value="6 Month">6 Months</option>
                                              <option value="12 Month">12 Months</option>
                                       </select>
                                      </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Prices</label>
                                        <input class="form-control" id="ccnumber" name="Prices" type="number" required placeholder="Enter Prices">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" class="btn btn-primary float-right">Submit</button>
                                       </div>
                                        <div class="col-sm-6 float-left">
                                            <a type="button" href="<?php echo base_url();?>dealer" class="btn btn-primary">Back</a>
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