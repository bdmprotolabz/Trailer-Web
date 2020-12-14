<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Admin Ad's</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Admin Ad's</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

	        <div class="row">
            	<div class="col-12 float-right">
            		<div class="col-2 float-right">
            			<a class="btn btn-success float-right" href="<?php echo base_url();?>add_ad" style=" margin-right: 43px; margin-top: 26px;">Add Ad's</a> 
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
				        <h5 class="card-title">Admin Ad's</h5>
				        <div class="table-responsive">
				            <table id="product" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                   
				                        <th>Ad Title</th>
										
										<th>image</th>
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
					                     <td><?php echo $row->ad_title; ?></td>
					                    
					                     <td><img src="<?php echo $row->image; ?>" width="70px"></td>
					                    
				                          <td>
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->id; ?>&table=ades" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></td>
				                        
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

