<?php include_once 'header.php'; ?>

            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Add Product</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add Product</li>
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
 width: 70%; 
color: black; 
margin: 0px auto !important; 
background: #fff; 
padding: 10px 20px;
}
</style>

                <div class="col-lg-12" >
                  <div class="abd">
                    <div class="">
                        <div class="card-header"><strong>Product Info</strong></div>
                         <div class="card-body">
                            <?php if ($this->session->flashdata('success')) { ?>
                             <div class="alert alert-success" id="alert" align="center">
                                <?php echo $this->session->flashdata('success'); ?>
                                 </div>
                            <?php } ?>
                           <!--  action="<?php echo base_url();?>do_upload" -->
                              <form action="<?php echo base_url();?>welcome/update_provuct" enctype="multipart/form-data" method="post" >
                                <?php foreach($data as $row)
                                            {?>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Part No</label>
                                        <input class="form-control" id="Part" type="text" value="<?php echo $row->Partno;?>" name="Partno" required placeholder="Part No">
                                      </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Select Image if you wont to change.</label>
                                        <input class="form-control" id="img" name="userfile" type="file" >
                                        </div>
                                    </div>
                                </div> 
                         <input class="form-control" id="id" type="hidden" name="id" value="<?php echo $row->id;?>" required placeholder="">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Enter Product Name</label>
                                        <input class="form-control" id="" name="product_name" type="text" value="<?php echo $row->product_name;?>" required placeholder="Enter Product Name">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Enter Description</label>
                                        
                                        <textarea  class="form-control" name="Description"  rows="1" cols="50"><?php echo $row->Description;?></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Wheel Stud Diameter </label>
                                     
                                        <textarea  class="form-control" name="Wheel_Stud_Diameter"  rows="1" cols="50"><?php echo $row->Wheel_Stud_Diameter;?></textarea>
                                        </div>
                                    </div>
                                </div>
                              
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Hub Diameter/Bolt Pattern </label>
                                       
                                        <textarea  class="form-control" name="Hub_Diameter"  rows="1" cols="50"><?php echo $row->Hub_Diameter;?></textarea>
                                        </div>
                                    </div>
                                </div>

                               <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Brake Actuation Type </label>
                                        <input class="form-control" id="" name="Brake_Actuation_Type" value="<?php echo $row->Brake_Actuation_Type;?>" type="text" required placeholder="Brake Actuation Type">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Brake Type </label>
                                        <input class="form-control" id="" name="Brake_Type" type="text" value="<?php echo $row->Brake_Type;?>" required placeholder="Brake Type">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">EZ Lube </label>
                                        <input class="form-control" id="" name="EZ_Lube" type="text" value="<?php echo $row->EZ_Lube;?>" required placeholder="EZ Lube">
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">from Axle Weight Capacity </label>
                                        <input class="form-control" id="" name="start_weight" type="text" value="<?php echo $row->start_weight;?>" required placeholder="From Axle Weight Capacity">
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">To Axle Weight Capacity </label>
                                        <input class="form-control" id="" name="to_weight" type="text" required value="<?php echo $row->to_weight;?>" placeholder="To Axle Weight Capacity">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Axle Manufacturer </label>
                                        <input class="form-control" id="" name="Axle_Manufacturer" value="<?php echo $row->Axle_Manufacturer;?>" type="text" required placeholder="Axle Manufacturer">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        
                                        <label for="">Trailer Manufacturer </label>
                                        <input class="form-control" id="" name="Trailer_Manufacturer"  value="<?php echo $row->Trailer_Manufacturer;?>" type="text" placeholder="Trailer Manufacturer">
                                        </div>
                                     </div>   
                                 </div>
                                

                                  <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Starting Trailer Year </label>
                                        <input class="form-control" id="" name="strat_year" value="<?php echo $row->strat_year;?>" type="text" required placeholder="Trailer Year">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="">Ending Trailer Year </label>
                                        <input class="form-control" id="" name="end_year" type="text"  value="<?php echo $row->end_year;?>"required placeholder="Trailer Year">
                                        </div>
                                    </div>
                                </div>
                                

                            </div>
                            <?php
                                }?>
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

<!-- 
//href="<?php echo base_url();?>dealer"
 -->

                </div>
            </div>  
          <script type="text/javascript">
              $('button#cancel').on('click', function(e){
                     e.preventDefault();
                    window.history.back();
                });
          </script>
<?php include_once 'footer.php'; ?>
