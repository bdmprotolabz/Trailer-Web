<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Driver Query</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Driver Query</li>
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
				        <h5 class="card-title">Driver Query</h5>
				        <div class="table-responsive">
				            <table id="product" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
			                    	 <th>S.no</th>
			                    	 <th>Driver Name</th>
			                    	 <th>Driver Contact</th>
				                     <th>Prroduct Name</th>
				                     <th>Product Image </th>
     			                     <th>Created At</th>
				                    </tr>
				                </thead>
				                <tbody>
				               <?php 
				               
            
							       $i=1;
							                foreach($mem as $row)
							                {
							       
							                    ?>
				                
				                    <?php
								           $i++;
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

