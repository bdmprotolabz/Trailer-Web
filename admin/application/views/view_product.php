<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Manage Product</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Product</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

           
           <div class="row">
            	<div class="col-12 float-right">
            		<div class="col-2 float-right">
            			 <a class="btn btn-success float-right" href="<?php echo base_url();?>product" style=" margin-right: 43px; margin-top: 26px;">Add Product</a>
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
			   <div class="col-12">
				<div class="card">
				    <div class="card-body">
				        <h5 class="card-title">Membership Product</h5>
				        <div class="table-responsive">
				            <table id="product" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                        <th>Part No.</th>
				                        <th>Product Image</th>
										<th>Product Name</th>
										<th>Description</th>
										<th>Wheel Stud Diameter</th>
										<th>Hub Diameter/Bolt Pattern</th>
										<th>Brake Actuation Type</th>
										<th>Brake Type</th>
										<th>EZ Lube</th>
										<th>from Axle Weight Capacity</th>
										<th>To Axle Weight Capacity</th>
										<th>Axle Manufacturer</th>
										<th>Trailer Manufacturer</th>
										<th>Starting Trailer Year</th>
										<th>Ending Trailer Year</th>
				                        <th>Action</th>
				                    </tr>
				                </thead>
				                <tbody>
				               <?php 
				                if($mem>0)
                                   {
            
							       $i=1;
							                foreach($mem as $row)
							                {
							       
							                    ?>
				                    <tr>
				                    	 <td><?php echo $i?> </td>
					                     <td><?php echo $row->Partno; ?></td>
					                      <td style="background: #000;"><img src="<?php echo $row->image; ?>" width="70px"></td>
					                     <td><?php echo $row->product_name; ?></td>
					                     <td><?php echo $row->Description; ?></td>
					                     <td><?php echo $row->Wheel_Stud_Diameter; ?></td>
					                     <td><?php echo $row->Hub_Diameter; ?></td>
					                     <td><?php echo $row->Brake_Actuation_Type; ?></td>
					                     <td><?php echo $row->Brake_Type; ?></td>
					                     <td><?php echo $row->EZ_Lube; ?></td>
					                     <td><?php echo $row->start_weight; ?></td>
					                     <td><?php echo $row->to_weight; ?></td>
					                     <td><?php echo $row->Axle_Manufacturer; ?></td>
					                     <td><?php echo $row->Trailer_Manufacturer; ?></td>
					                     <td><?php echo $row->strat_year; ?></td>
					                     <td><?php echo $row->end_year; ?></td>
				                          <td><a href="<?php echo base_url();?>edit_product?data=<?php echo $row->id; ?>" class="btn-sm btn btn-primary"><i class="fa fa-eye fa-lg"></i></a>
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->id; ?>&table=admin_product" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></td>
				                        
				                    </tr>
				                    <?php
								           $i++;
								              }
								        
								    }
								else
								{
								?>
								        <tr >
								       <td colspan="7" align="center" style="color: #000"> No Data Found</td>    
								        </tr>
								  <?php
								}

								?> 
				                </tbody>
				               
				            </table>
				        </div>
				    </div>
				</div>        
			 </div>
			</div>
	   </div>		

<?php include_once 'footer.php'; ?>
   <script src="<?php echo base_url();?>assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="<?php echo base_url();?>assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="<?php echo base_url();?>assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#product').DataTable();
    </script>

