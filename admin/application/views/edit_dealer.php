<?php include_once 'header.php'; ?>

            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Edit Dealer</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Edit Dealer</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
          
            <div class="container-fluid">
                
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
<?php if ($this->session->flashdata('success')) { ?>
     <div class="alert alert-success" id="alert" align="center">
        <?php echo $this->session->flashdata('success'); ?>
         </div>
<?php } ?>
                <div class="col-lg-12" >
                  <div class="abd">
                    <div class="">
                        <div class="card-header"><strong>Edit Dealer Info</strong></div>
                         <div class="card-body">
                              <form action="<?php echo site_url('Welcome/update_dealer'); ?>" method="post" >
                                
                                <?php foreach($data as $row)
                                            {?>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Dealer Name</label>
                                        <input class="form-control" id="name" type="text" name="name" value="<?php echo $row->name;?>" required placeholder="Enter your name">
                                      </div>
                                    </div>
                                </div>
                              <input class="form-control" id="id" type="hidden" name="id" value="<?php echo $row->id;?>" required placeholder="Enter your name">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Dealer Email</label>
                                        <input class="form-control" id="ccnumber" name="email" value="<?php echo $row->email;?>" type="email" required placeholder="Enter Dealer Email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Dealer Contact</label>
                                        <input class="form-control"  readonly value="<?php echo $row->contact;?>" type="text" required placeholder="Enter Dealer Email">
                                       <!--  <input class="form-control" id="number" readonly value="<?php echo $row->contact;?>" name="number" type="number" required placeholder="Enter Dealer Contact"> -->
                                        </div>
                                    </div>
                                </div>
                               <?php
                                }?>
                             <!--    <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Dealer Image</label>
                                        <input class="form-control" id="img" name="userfile" required type="file" >
                                        </div>
                                    </div>
                                </div> -->
                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" class="btn btn-primary float-right">Submit</button>
                                       </div>
                                        <div class="col-sm-6 float-left">
                                            <a type="button" href="<?php echo base_url();?>dealer" class="btn btn-primary">Back</a>
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
          


<?php include_once 'footer.php'; ?>