<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Dealer Reviews</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dealer Reviews</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-12 float-right" style="margin-bottom: 50px;">
           <!-- <a class="btn btn-success float-right" href="http://phpstack-102119-1169738.cloudwaysapps.com/admin/add_membership" style="width: 20%; margin-right: 43px; margin-top: 26px;">Add Membership plan</a> -->
           </div>
       </div>
        
      <div class="container-fluid">
			 <div class="row">
			   <div class="col-12">
				<div class="card">
				    <div class="card-body">
				        <h5 class="card-title">Dealer Reviews </h5>
				        <div class="table-responsive">
				            <table id="zero_config" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                        <th>Driver Name</th>
				                        <th>Dealer Name</th>
				                        <th>Review</th>
				                        <th>Created at</th>
				                         <th>Action</th>
				                    </tr>
				                </thead>
				                <tbody>
				               <?php 
				                if($review>0)
    {
            
							       $i=1;
							                foreach($review as $row)
							                {
							       
							                    ?>
				                    <tr>
				                    	 <td><?php echo $i?> </td>
					                     <td><?php echo $row->driver_name ;?></td>
					                   
				                         <td><?php echo $row->dealer_name; ?></td>
				                        <td><?php echo $row->review; ?></td>
				                         
				                         <td><?php echo date('d-M-Y', strtotime( $row->create_at ) ); ?></td>
				                          <td>
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->rid; ?>&table=review_dealer" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></td>
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

