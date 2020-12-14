<?php include_once 'header.php'; ?>

            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Edit Driver</h4>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Edit Driver</li>
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
                        <div class="card-header"><strong>Edit Driver Info</strong></div>
                         <div class="card-body">
                              <form action="<?php echo site_url('Welcome/update_driver'); ?>" enctype="multipart/form-data" method="post" >
                                <div class="row">
                                <?php foreach($data as $row)
                                            {
                                                ?>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="name">Driver Name</label>
                                        <input class="form-control" id="name" type="text" name="name" value="<?php echo $row->name; ?>" required placeholder="Enter Driver name">
                                      </div>
                                    </div>
                                </div>
                            <input class="form-control" id="name" type="hidden" name="id" value="<?php echo $row->id; ?>">

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Driver Email</label>
                                        <input class="form-control" id="email" name="email" type="email" value="<?php echo $row->email; ?>" required placeholder="Enter Dealer Email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Driver Contact</label>
                                        <input class="form-control" id="number" name="number" type="number" value="<?php echo $row->contact; ?>" required placeholder="Enter Dealer Contact">
                                        </div>
                                    </div>
                                </div>

                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Trailer year</label>
                                        <input class="form-control" id="trailer_year" name="trailer_year" type="trailer_year" value="<?php echo $row->trailer_year; ?>" required placeholder="Enter Vehicle Name">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12" id=''>
                                        <div class="form-group">
                                        <label for="ccnumber">Select Part number</label>
                                        <select name="part" id="part" required="" style="width: 100%;" class="form-control">
                                                                  <option  value="<?php echo $row->part_no; ?>"><?php echo $row->part_no; ?></option>
                                                                  <option data-countrycode="GB"selectd value="">Select Part number</option>
                                                                   <optgroup id='partno'>
                                                                   </optgroup>
                                                                </select>
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Product Name</label>
                                        <input class="form-control" id="Product_name" name="Product_name" value="<?php echo $row->product_name; ?>" type="text" required placeholder="Enter Product Name">
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Description </label>
                                        <input class="form-control" id="des" name="Description" type="text" value="<?php echo $row->description; ?>" required placeholder="Enter Description">
                                        </div>
                                    </div>
                                </div>




                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Wheel Stud Diameter</label>
                                        <input class="form-control" id="Wheel" name="Wheel" value="<?php echo $row->wheel_stud; ?>" type="text" required placeholder="Wheel Stud Diameter">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Hub Diameter/Bolt pattern</label>
                                        <input class="form-control" id="Hub" name="Hub" value="<?php echo $row->hub_diameter; ?>" type="text" required placeholder="Hub Diameter/Bolt pattern">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Brake actuation type</label>
                                        <input class="form-control" id="Brake" name="Brake" value="<?php echo $row->brake_actuation; ?>" type="text" required placeholder="Brake actuation type">
                                        </div>
                                    </div>
                                </div>
                                 <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Brake type</label>
                                        <input class="form-control" id="Brake_typ" name="Brake_typ" value="<?php echo $row->brack_type; ?>" type="text" required placeholder="Brake type">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">EZ lube</label>
                                        <input class="form-control" id="lube" name="lube" value="<?php echo $row->ez_labe; ?>" type="text" required placeholder="EZ lube">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Axle Weight capacity </label>
                                        <input class="form-control" id="Axle_Weight" value="<?php echo $row->axle_weight_capacity; ?>" name="Axle_Weight" type="text" required placeholder="Axle Weight capacity">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Axle Manufacturer</label>
                                        <input class="form-control" id="Manufacturer" value="<?php echo $row->axle_manufacturer; ?>" name="Manufacturer" type="text" required placeholder="Axle Manufacturer">
                                        </div>
                                    </div>
                                </div>


                                  <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Trailer Manufacturer</label>
                                        <input class="form-control" id="t_Manufacturer" name="traler_menufacter" value="<?php echo $row->traler_menufacter; ?>" type="text" required placeholder="Trailer Manufacturer">
                                        </div>
                                    </div>
                                </div>
                             <!--    <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                        <label for="ccnumber">Driver Image</label>
                                        <input class="form-control" id="img" name="userfile" value="<?php echo $row->image; ?>" required type="file" >
                                        </div>
                                    </div>
                                </div> -->
<?php }
?>
                                <div class="row">
                                    <div class="col-sm-12">
                                       <div class="col-sm-6 float-left">
                                           <button type="Submit" class="btn btn-primary float-right">Submit</button>
                                       </div>
                                        <div class="col-sm-6 float-left">
                                            <a type="button" href="<?php echo base_url();?>driver" class="btn btn-primary">Back</a>
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
          

 <script type="text/javascript">
                          $( "#trailer_year" ).change(function() {
                            var url= window.location.protocol + "//" + window.location.host;
                            var api =url+'/API/driver.php/product_year';

                            //  alert(api);
                   //exit();
                           var year=$('#trailer_year').val();;
                                       var accesstoken='123hg213g123hg231hg321h123fgj';
                            $.ajax({
                                url: api,
                                type: 'post',
                                data: {year: year, accesstoken: accesstoken},
                                success: function (response)
                                {   
                                    

                                    var data = JSON.parse(response);
                                     //console.log(data.data);
                                  
                                var pot='';
                
                                    for(var count=0; count <data.data.length; count++)
                                {
                                     pot+='<option data-countrycode="GB" value="'+data.data[count].Partno+'">'+data.data[count].Partno+'</option>'; 
                                 
                                 }
                             $('#partno').html(pot);
                        
                                }
                            });
                        });
                    </script>

                    <script type="text/javascript">
                          $( "#part" ).change(function() {
                            var url= window.location.protocol + "//" + window.location.host;
                            var api =url+'/API/driver.php/product_data';

                           var Partno=$('#part').val();;
                           var accesstoken='123hg213g123hg231hg321h123fgj';
                            $.ajax({
                                url: api,
                                type: 'post',
                                data: {Partno: Partno, accesstoken: accesstoken},
                                success: function (response)
                                {   

                                    var data = JSON.parse(response);

                                    //console.log(data.data);
                                document.getElementById('Product_name').value = data.data['product_name'] ;
                                
                                document.getElementById('Wheel').value = data.data['Wheel_Stud_Diameter'] ;
                                document.getElementById('Hub').value = data.data['hub_diameter'] ;
                                document.getElementById('Brake').value = data.data['Brake_Actuation_Type'] ;
                                document.getElementById('Brake_typ').value = data.data['Brake_Type'] ;
                                document.getElementById('lube').value = data.data['EZ_Lube'] ;
                                document.getElementById('Axle_Weight').value = data.data['Axle_Weight_Capacity'] ;
                                document.getElementById('Manufacturer').value = data.data['Axle_Manufacturer'] ;
                                document.getElementById('t_Manufacturer').value = data.data['Trailer_Manufacturer'] ; 
                                 document.getElementById('des').value = data.data['Description'] ; 
                                 // document.getElementById('des').value = data.data['Description'];
                               
                        
                                }
                            });
                            

                    
                                    });
                    </script>

<?php include_once 'footer.php'; ?>