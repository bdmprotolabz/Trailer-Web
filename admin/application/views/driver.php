<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Manage Driver</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Driver</li>
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
          
          <div class="row">
            	<div class="col-12 float-right">
            		<div class="col-2 float-right">
            			 <a class="btn btn-success float-right" href="<?php echo base_url();?>add_driver" style=" margin-right: 43px; margin-top: 26px;">Add Driver</a>
            		</div>
	           </div>
	       </div>
       
      <div class="container-fluid">
			 <div class="row">
			   <div class="col-12">
				<div class="card">
				    <div class="card-body">
				        <h5 class="card-title">Manage Driver</h5>
				        <div class="table-responsive">
				            <table id="zero_config" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                        <th>Name</th>
				                        <th>Image</th>
				                        <th>Contact no</th>
				                        <th>Email</th>
				                        <th>Trailer Year</th>
				                        <th>Part Number</th>
				                        <th>Product Name</th>
				                        <th>Wheel Stud diameter</th>
				                        <th>Hub Diameter/Bolt pattern</th>
				                        <th>Brake actuation type </th>
				                        <th>Brake type </th>
				                        <th>EZ lube </th>
				                        <th>Axle Weight capacity</th>
				                        <th>Axle Manufacturer</th>
				                        <th>Trailer Manufacturer</th>
				                        <th>Created at</th>
				                        <th>Action</th>
				                    </tr>
				                </thead>
				                <tbody>
				               <?php 
				                if($data_driver>0)
    {
            
							       $i=1;
							                foreach($data_driver as $row)
							                {
							       
							                    ?>
				                    <tr>
				                    	 <td><?php echo $i?> </td>
					                     <td><?php echo $row->name ;?></td>
					                     <td><img src="<?php echo $row->image; ?>" width="70px" ></td>
				                         <td><?php echo $row->contact; ?></td>
				                         <td><?php echo $row->email; ?></td>
				                          <td><?php echo $row->trailer_year; ?></td>
				                           <td><?php echo $row->part_no; ?></td>
				                           <td><?php echo $row->product_name; ?></td>
				                         <td><?php echo $row->wheel_stud; ?></td>
				                         <td><?php echo $row->hub_diameter; ?></td>
				                         <td><?php echo $row->brake_actuation; ?></td>
				                          <td><?php echo $row->brack_type; ?></td>
				                         <td><?php echo $row->ez_labe; ?></td>
				                         <td><?php echo $row->axle_weight_capacity; ?></td>
				                         <td><?php echo $row->axle_manufacturer; ?></td>
				                         <td><?php echo $row->traler_menufacter; ?></td>

				                         
				                          <td><?php echo date('d-M-Y', strtotime( $row->created_at ) ); ?></td>
				                          <td><a href="<?php echo site_url('Welcome/edit_driver'); ?>?data=<?php echo $row->id; ?>" class="btn-sm btn btn-primary"><i class="fa fa-eye fa-lg"></i></a>
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->id; ?>&table=drivers" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></td>
				                        
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
        $('#zero_config').DataTable();
    </script>

