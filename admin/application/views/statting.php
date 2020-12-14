<?php include_once 'header.php'; ?>

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Change Password</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Change Password</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row" style=" margin: 0px auto;">
                   

				<style type="text/css">
				    .abd {
				 width: 50%; 
				color: black; 
				margin: 0px auto !important; 
				background: #fff; 
				padding: 10px 20px;
				}
				</style>

                <div class="col-lg-12" >
                  <div class="abd">
                  	<?php if ($this->session->flashdata('success')) { ?>
					     <div class="alert alert-danger" id="alert" align="center">
					        <?php echo $this->session->flashdata('success'); ?>
					         </div>
					<?php } ?>
                    <div class="">
                        <div class="card-header"><strong>Change Password</strong></div>
                         <div class="card-body">
                              <form action="<?php echo base_url();?>welcome/update_pass" method="post" >
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Enter Old Password</label>
                                        <input class="form-control" id="opass" type="text" name="opass" required placeholder="Enter Old Password">
                                      </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Enter new Password</label>
                                        <input class="form-control" id="npass" name="npass" type="Password" required placeholder="Enter new Password">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" class="btn btn-primary float-right">Submit</button>
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