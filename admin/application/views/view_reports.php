<?php include_once 'header.php'; ?>

<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Report post</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Report post</li>
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
				        <h5 class="card-title">Report post</h5>
				        <div class="table-responsive">
				            <table id="zero_config" class="table table-striped table-bordered">
				                <thead>
				                    <tr>
				                    	 <th>S.no</th>
				                        <th>Post Title</th>
				                        <th>Post location</th>
				                        <th>Report from</th>
				                        <th>Report Comment</th>
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
					                     <td><?php echo $row->title ;?></td>
				                         <td><?php echo $row->location; ?></td>
				                    
				                          <td><?php echo $row->name; ?></td>
				                           <td><?php echo $row->comment; ?></td>
				                          

				                         <td><?php echo date('d-M-Y', strtotime($row->created_at));  ?></td>
				                          <td><a href="<?php echo site_url('Welcome/report_post'); ?>?data=<?php echo $row->rep_id; ?>" class="btn-sm btn btn-primary">
				                          Delete Post</a>
                                              <a href="<?php echo site_url('Welcome/delete'); ?>?data=<?php echo $row->rep_id; ?>&table=report_post" class="btn-sm btn btn-danger" onclick="return confirm('Are you sure you want to delete this Repost?');">Delete Report</a></td>
				                        
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

