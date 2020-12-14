<?php include_once 'header.php'; ?>
<style type="text/css">
    .abd{
             width: 70%; 
            color: black; 
            margin: 0px auto !important; 
            background: #fff; 
            padding: 10px 20px;
        }
</style>
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Add AD's</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add AD's</li>
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
             



                <div class="col-lg-12" >
                  <div class="abd">
                    <div class="">
                        <div class="card-header"><strong>AD's Info</strong></div>
                         <div class="card-body">
                                                        <?php if ($this->session->flashdata('success')) { ?>
                                 <div class="alert alert-success" id="alert" align="center">
                                    <?php echo $this->session->flashdata('success'); ?>
                                     </div>
                            <?php } ?>
                           <!--  action="<?php echo base_url();?>do_upload" -->
                              <form action="<?php echo base_url();?>welcome/save_add" enctype="multipart/form-data" method="post"  >
                               
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name"> Ad Title </label>
                                        <input class="form-control" id="name" type="text" name="ad_title" required placeholder="Enter your name">
                                      </div>
                                    </div>
                                </div>

                              <!--   <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber" >Ad amount</label>
                                        <input class="form-control" name="amount" type="number" required placeholder="Enter Dealer Email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber" >Ad clieck</label>
                                        <input class="form-control"  name="clieck" type="number" required placeholder="Enter clieck">
                                        </div>
                                    </div>
                                </div>   -->

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber" >Ad URL</label>
                                        <input class="form-control" id="ccnumber" name="description" type="URL" required placeholder="http://asd.com">
                                        </div>
                                    </div>
                                </div>      
                                

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Ad Image</label>
                                        <input class="form-control" id="img" name="userfile" required type="file" >
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" id="Submit"  class="btn btn-primary float-right">Submit</button>
                                       </div>
                                        <div class="col-sm-6 float-left">
                                            <button id="cancel" type="button"  class="btn btn-primary">Back</button>
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
          <script type="text/javascript">
              $('button#cancel').on('click', function(e){
                     e.preventDefault();
                    window.history.back();
                });
          </script>
 





<?php include_once 'footer.php'; ?>

