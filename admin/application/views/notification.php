<?php include_once 'header.php'; ?>
<style type="text/css">
	.preloader {
    display: none !important;
}
</style>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Manage Notifications</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Notifications</li>
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
            			<a class="btn btn-success float-right"  data-toggle="modal" data-target="#form" style="margin-right: 43px; margin-top: 26px; color: #fff;">Upload New</a>

            		</div>
           
           </div>
       </div>
       
      <div class="container-fluid">
			 <div class="row">
			   <div class="col-12">
				<div class="card">
				    <div class="card-body">
				        <h5 class="card-title">Manage Notifications</h5>
				        <div class="table-responsive">
				            <table id="zero_config" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                        <th>To</th>
				                        <th>Title</th>
				                        <th>Description</th>
				                        <th>Created at</th>
				                        <th>Action</th>
				                    </tr>
				                </thead>
				                <tbody>
				               <?php 
							       $i=1;
							                foreach($admin_noti as $row)
							                {
							       
							                    ?>
				                    <tr>
				                    	 <td><?php echo $i?> </td>
					                     <td><?php echo $row->to ;?></td>
				                         <td><?php echo $row->title; ?></td>
				                         <td><?php echo $row->Description; ?></td>
				                        

				                         <td><?php echo date('d-M-Y', strtotime( $row->created_on ) ); ?></td>
				                          <td> <a href="<?php echo site_url('Welcome/push_again'); ?>?data=<?php echo $row->id; ?>" class="btn-sm btn btn-primary">Again</a> 
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->id; ?>&table=admin_noti" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></td>
				                        
				                    </tr>
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
 <div class="modal fade" id="form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">Push Notifications</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo base_url();?>welcome/puch_n"  method="post" >
        <div class="modal-body">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Select To</label>
            <select class="form-control" name='to' required id="exampleFormControlSelect1">
		      <option value="">Select To</option>
		      <option value="Drivers">To Driver</option>
		      <option value="Dealers">To Dealer</option>
		     
		    </select>
          </div>
          <div class="form-group">
            <label for="Title">Title</label>
            <input type="text" required name='title' class="form-control" id="Title" placeholder="Trailer">
          </div>
          <div class="form-group">
            <label for="Description">Description</label>
            <input type="text" required name='Description' class="form-control" id="Description" placeholder="Description">
          </div>
        </div>
        <div class="modal-footer border-top-0 d-flex justify-content-center">
          <button type="submit" class="btn btn-success">Submit</button>
        </div>
      </form>
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

