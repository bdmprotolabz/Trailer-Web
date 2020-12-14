<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Verify dealer</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Verify dealer</li>
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
			   <div class="col-12">
				<div class="card">
				    <div class="card-body">
				        <h5 class="card-title">Verify dealer</h5>
				        <div class="table-responsive">
				            <table id="product" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
			                    	 <th>S.no</th>
			                    	 <th>Driver Name</th>
			                    	 <th>Dealer Name</th>
				                        <th>Image</th>
				                        <th>Contact </th>
										<th>Location</th>
										
										
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
				                    	 <td><?php echo $row->driver_name; ?></td>
				                    	 <td><?php echo $row->name; ?></td>
				                    	  <td><img src="<?php echo $row->image; ?>" width="70px"></td>
					                     <td><?php echo $row->contact; ?></td>
					                     <td><?php echo $row->location; ?></td>
					                  
					                    
					                    
				                          <td><a href="<?php echo base_url();?>approve_dealer?data=<?php echo $row->id; ?>" class="btn-sm btn btn-primary">Approve</a>
                                              <a href="<?php echo site_url('Welcome/reject_dealer'); ?>?data=<?php echo $row->id; ?>&table=ades" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to Reject this Dealer?');">Reject</a></td>
				                        
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

