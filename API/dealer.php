<?php 
	date_default_timezone_set('Asia/Kolkata'); 
	require  '../vendor-old/autoload.php';
	use Twilio\Rest\Client;
	$urlParams = explode('/', $_SERVER['REQUEST_URI']);
	$functionName = $urlParams[3];
    if(!function_exists($functionName)){
		$message['code'] 	= "500";
		$message['message'] = "error";
		$message['data'] 	= "Route Not Found";
		echo json_encode($message);
	}else{

		$functionName($urlParams);
	}	 



	/*=================================================
	 	Sign up (New Driver) 
	  =================================================*/

	function signup(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$contact=trim($contact);
		if($check){
		$otp = rand(1000,9999);
		$date = date('H:i:s', strtotime(' + 1 minutes') ); 

         $query2 =  mysqli_query($con,"SELECT `id` FROM `drivers` WHERE `contact` = '$contact'") or mysqli_error ($con);
		$query2=mysqli_num_rows($query2);
		if($query2!="1"){
				 $query1 =  mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact'") or mysqli_error ($con);
				$query12=mysqli_num_rows($query1);
				if($query12>="1")
				{
					            $message['code'] = "201";
								$message['message'] = "You're registered yet. Please Login ";


					}
					else{
								
								 
								  try{
								  	$sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
			                       $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
			                       $client = new Client($sid, $token);
								 	$client->messages->create($contact, array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));
								 	$query2=mysqli_query($con,"INSERT INTO `dealer` set `contact` = '$contact' ,status=0 ,device_type='$device_type',device_token='$device_token',otp= $otp, otp_expire='$date'") or die("Query fail: " . mysqli_error($con));
												$message['code'] = "200";
												$message['message'] = "success";
												$message['data']	= (object)[
													"otp"			=> $otp
												];
							        }
									 catch(Exception $e)
									 {
											$query2=mysqli_query($con,"INSERT INTO `dealer` set `contact` = '$contact' ,status=0 ,device_type='$device_type',device_token='$device_token',otp= $otp, otp_expire='$date'") or die("Query fail: " . mysqli_error($con));
									 	        $message['code'] = "200";
												$message['message'] = "Please Enter viled number";
												$message['data']	= (object)[
													"otp"			=> $otp
												];
			 
									 }
					      }
					    }

					    else{
                         $message['code'] = "203";
							$message['message'] = "This number is already exist in driver side";
							
                             }
			    }
			    else{
							    $message['code'] = "501";
								$message['message'] = "accesstoken error...";
							
							}

							
					echo json_encode($message);
	  }
    
     /*=================================================
	 	login (New Driver) 
	  =================================================*/

	function login(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$contact=trim($contact);
		if($check){
		$otp = rand(1000,9999);
		$date = date('H:i:s', strtotime(' + 1 minutes') ); 
				 $query1 =  mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact'") or mysqli_error ($con);
				$query1=mysqli_num_rows($query1);
				if($query1=="1")
				{
					
					
					 
					 try{
					          $sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                            $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                            $client = new Client($sid, $token);
					 	     $client->messages->create($contact, array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));	
					 	     $query2=mysqli_query($con,"UPDATE  `dealer` set otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token'  WHERE `contact` = '$contact' ") or die("Query fail: " . mysqli_error($con));
								$message['code'] = "200";
								$message['message'] = "success";
								$message['data']	= (object)[
								
									"otp"			=> $otp
								];
							}
							catch(Exception $e)
							 {
							 	$query2=mysqli_query($con,"UPDATE  `dealer` set otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token'  WHERE `contact` = '$contact' ") or die("Query fail: " . mysqli_error($con));
							 	        $message['code'] = "202";
										$message['message'] = "Please Enter viled number";
										$message['data']	= (object)[
														"otp"			=> $otp
													];
	 
							 }
						
						$con->close();
					}
					else
					{
						        $message['code'] = "204";
								$message['message'] = "You're not registered yet. Please Signup ";

					}
					

					   
			    }
			    else{
							    $message['code'] = "501";
								$message['message'] = "accesstoken error...";
							
							}

							
					echo json_encode($message);
	  }
    
	// ======================================================================
	// Get Login
	// ======================================================================

	function verify_otp(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$contact=trim($contact);

		$date = date('H:i:s'); 
	     if($check){

			 $query1 =  mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact' and otp='$otp' and otp_expire>'$date' ") or mysqli_error ($con);
            $query1=mysqli_fetch_assoc($query1);
			 
			
            if($query1){
            	$qu=mysqli_query($con,"UPDATE `dealer` set status=1 WHERE `contact` = '$contact'") or die("Query fail: " . mysqli_error($con));
            	$query1=mysqli_query($con,"SELECT * FROM `dealer` WHERE `contact` = '$contact'") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);


                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							    "id"					=> $query0["id"],
								"name" 					=> $query0["name"],
								"lastname" 		        => $query0["l_name"],
								"email"					=> $query0["email"],
								"driverImg"				=> $query0["image"],
								"contact"				=> $query0["contact"],
								"devicetype"			=> $query0["device_type"],
								"device_token"			=> $query0["device_token"],
								"otp"			=> "verify_otp"
							];
						}
						else{
							 $message['code'] = "201";
					          $message['message'] = "otp not verify";
						}
		  }
		   else{
			    $message['code'] = "501";
				$message['message'] = "accesstoken error...";
			
	          }

				
		echo json_encode($message);
	}
	/*=================================================
	 	GET Profile
	=================================================*/

	function Get_profile(){
	        require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
			
			
	            	$query1=mysqli_query($con,"SELECT dealer.*,count(review_dealer.review)  FROM `dealer` LEFT JOIN review_dealer ON dealer.id=review_dealer.dealer_id WHERE dealer.id='$dealerID' and dealer.status=1 ") or die("Query fail: " . mysqli_error($con));
						$query0=mysqli_fetch_assoc($query1);
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['data']	= (object)[
								    "id"			=> $query0["id"],
									"name" 			=> $query0["name"],
									"lastname" 		=> $query0["l_name"],
									"image"			=> $query0["image"],
									"email"			=> $query0["email"],
									"contact"		=> $query0["contact"],
									"totel_review"	=> $query0["count(review_dealer.review)"]
								];
							
							
			   }
			else{
				    $message['code'] = "501";
					$message['message'] = "Token not found";
				
		         }

					
			echo json_encode($message);

	}
	

	/*=================================================
	 	GET ad's price
	=================================================*/

	function Get_price(){
	        require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
			
			
	            	$query1=mysqli_query($con,"SELECT * FROM `ads_price` where id=1") or die("Query fail: " . mysqli_error($con));
						$query0=mysqli_fetch_assoc($query1);
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['data']	= (object)[
								    "id"			=> $query0["id"],
									"click" 			=> $query0["click"],
									"price" 		=> $query0["price"]
								];
							
							
			   }
			else{
				    $message['code'] = "501";
					$message['message'] = "Token not found";
				
		         }

					
			echo json_encode($message);

	}
	
	/*=================================================
	 	update frofile
	=================================================*/

	function update_profile(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
         $query1=mysqli_query($con,"UPDATE  `dealer` set  `name`='$name',email='$email',l_name='$lastname' ,status=1 WHERE id='$dealerID' ") or die("Query fail: " . mysqli_error($con));
			if($query1){
				$query1=mysqli_query($con,"SELECT * FROM `dealer` WHERE id='$dealerID'") or die("Query fail: " . mysqli_error($con));
				 $query0=mysqli_fetch_assoc($query1);
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	= (object)[
							    "id"					=> $query0["id"],
								"name" 					=> $query0["name"],
								"lastname" 				=> $query0["l_name"],
								"email"					=> $query0["email"],
								"driverImg"				=> $query0["image"],
								"contact"				=> $query0["contact"],
								"devicetype"			=> $query0["device_type"],
								"device_token"			=> $query0["device_token"]
								
							];
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Not Updated";
			}
			$con->close();
		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}


   /*=================================================
	 	update image
	=================================================*/

	function update_image(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
         $img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
		   
		    if($_FILES["user_img"]["name"]!=""){
		        $rand_no1=rand(10000,99999);
		        $filename1 = $_FILES['user_img']['name'];
		        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
		        $ins_img_name="ins".$rand_no1.".".$ext1;
		        $img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
		       move_uploaded_file($_FILES["user_img"]["tmp_name"],"../img/location/".$ins_img_name);
		    }


         $query1=mysqli_query($con,"UPDATE  `dealer` set `image`='$img' ,status=1 WHERE id='$dealerID' ") or die("Query fail: " . mysqli_error($con));

        
			if($query1){
				$query1=mysqli_query($con,"SELECT id, image FROM `dealer` WHERE id='$dealerID'") or die("Query fail: " . mysqli_error($con));
				 $query0=mysqli_fetch_assoc($query1);
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	= (object)[
							    
								"image"				=> $query0["image"]
								
								
							];
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Not Updated";
			    }
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}

	/*=================================================
	 	update image
	=================================================*/

	function update_location(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){

           $query1 =  mysqli_query($con,"SELECT `id` FROM `dealer_crunt_location` WHERE `dealer_id` = '$dealerID'") or mysqli_error ($con);
				$query1=mysqli_num_rows($query1);
				if($query1>="1")
				{


                  $query1=mysqli_query($con,"UPDATE  `dealer_crunt_location` set `d_lat`='$dealer_lat', `d_lont`='$dealer_long'  WHERE dealer_id='$dealerID' ") or die("Query fail: " . mysqli_error($con));

				$message['code'] 	= "200";
				$message['message'] = "Success";
				}
				else
				{
                  $query1=mysqli_query($con,"INSERT into  `dealer_crunt_location` set `d_lat`='$dealer_lat', `d_lont`='$dealer_long' ,dealer_id='$dealerID' ,status='1' ") or die("Query fail: " . mysqli_error($con));

						$message['code'] 	= "200";
						$message['message'] = "Success";
				}
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}



	/*=================================================
	 	my location
	=================================================*/

	function mylocation(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			$location= '"'.$location.'"';
			  $query1=mysqli_query($con,"SELECT * FROM `add_location` WHERE `location` =$location") or die("Query fail: " . mysqli_error($con));
			  
			  $rows= mysqli_num_rows($query1);
			if($rows==null){
		         $location_img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
				    if($_FILES["loc_img"]["name"]!=""){
				        $rand_no1=rand(10000,99999);
				        $filename1 = $_FILES['loc_img']['name'];
				        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
				        $ins_img_name="ins".$rand_no1.".".$ext1;
				        $location_img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
				       move_uploaded_file($_FILES["loc_img"]["tmp_name"],"../img/location/".$ins_img_name);
				    }
                 
             

		         $query1=mysqli_query($con,"INSERT INTO `add_location` set  `dealer_id`='$dealerID', `location_title`='$location_title', `location`=$location,src_lat='$src_lat',src_long='$src_long' ,`img`='$location_img', `status`=1") or die("Query fail: " . mysqli_error($con));
					if($query1){
						$message['code'] 	= "200";
						$message['message'] = "Success";
						
					}
					else{
						$message['code'] 	= "201";
						$message['message'] = "Not Updated";
					}
					$con->close();
                }
                else
                {
                	$message['code'] 	= "201";
					$message['message'] = "This Location is already exists";

                }

		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}

    /*=================================================
	 	my location List
	=================================================*/

	function location_list(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT d.name,d.image,d.id as driver_id,r.location_id,a.location from drivers as d INNER JOIN review_dealer as r on r.driver_id=d.id INNER JOIN add_location as a on a.id=r.location_id WHERE r.dealer_id='$dealerID' GROUP by r.location_id") or die("Query fail: " . mysqli_error($con));
          
               $result = [];
					 	while($getReq=mysqli_fetch_assoc($query1)){
								 $query2=mysqli_query($con,"SELECT COUNT(id) as totel from review_dealer WHERE dealer_id='$dealerID' and driver_id='$getReq[driver_id]' and location_id='$getReq[location_id]'") or die("Query fail: " . mysqli_error($con));
							       $query2=mysqli_fetch_assoc($query2);
					         	 $data['image']=$getReq['image'];
					         	 $data['name']=$getReq['name'];
					         	 $data['review']=$query2['totel'];
					         	 $data['location']=$getReq['location'];




								array_push($result, $data);
							}

			if($result){
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "No Review on any location ";
			}
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}
	
	
	
   /*=================================================
	 	add Product
	=================================================*/

	function add_product(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
              $img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
		   
		    if($_FILES["product_img"]["name"]!=""){
		        $rand_no1=rand(10000,99999);
		        $filename1 = $_FILES['product_img']['name'];
		        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
		        $ins_img_name="ins".$rand_no1.".".$ext1;
		        $img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
		       move_uploaded_file($_FILES["product_img"]["tmp_name"],"../img/location/".$ins_img_name);
		    }
			 $query1=mysqli_query($con,"INSERT into product set `dealer_id`='$dealerid', `product_name`='$pname', `img`='$img', url='$url',price='$price' ") or die("Query fail: " . mysqli_error($con));
			if($query1){
                 $message['code'] 	= "200";
				$message['message'] = "Success";
			}
			else{
				$message['code'] 	= "202";
				$message['message'] = "Try it again..";
			}

		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}
	
		
   /*=================================================
	 	add Product
	=================================================*/

	function get_product(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
             
			 $query1=mysqli_query($con,"SELECT * FROM `product` WHERE dealer_id='$dealerid' ORDER BY `product`.`id` DESC ") or die("Query fail: " . mysqli_error($con));
			$result = [];
						
								while($getReq=mysqli_fetch_assoc($query1)){
										array_push($result, $getReq);
									}
									$message['code'] = "200";
									$message['message'] = "success";
									$message['data'] 	= $result;
								  
		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}
	
		
   /*=================================================
	 	delete Product
	=================================================*/

	function delete_product(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
             
			 $query1=mysqli_query($con,"DELETE FROM `product` WHERE id='$productid' ") or die("Query fail: " . mysqli_error($con));
			if($query1){
                 $message['code'] 	= "200";
				$message['message'] = "Success";
			}
			else{
				$message['code'] 	= "202";
				$message['message'] = "Try it again..";
			}

		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}

   /*=================================================
	 	my location List
	=================================================*/

	function my_location_list(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT * from add_location WHERE dealer_id='$dealerID' GROUP by id ORDER BY `created` DESC") or die("Query fail: " . mysqli_error($con));
          
               $result = [];
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		
								 $query2=mysqli_query($con,"SELECT COUNT(id) as totel from review_dealer WHERE dealer_id='$dealerID' and location_id='$getReq[id]' ") or die("Query fail: " . mysqli_error($con));
							       $query2=mysqli_fetch_assoc($query2);
					             $data['id']=$getReq['id'];
					         	 $data['image']=$getReq['img'];
					         	 $data['location_title']=$getReq['location_title'];
					         	 $data['totel']=$query2['totel'];
					         	 $data['location']=$getReq['location'];




								array_push($result, $data);
							}

			if($result){
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "No Review on any location ";
			}
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}
	
	
	/*=================================================
		 	driver_location
	=================================================*/

	function dealer_location(){
	       require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
				$location= '"'.$location.'"';
			
			$qu=mysqli_query($con,"UPDATE `dealer`  set `dealer_lat`='$dealer_lat', `dealer_long` ='$dealer_long',location=$location WHERE `id`=$dealerID ") or die("Query fail: " . mysqli_error($con));
				
				
	            if($qu){
	            	$query1=mysqli_query($con,"SELECT * FROM `dealer` WHERE `id`=$dealerID ") or die("Query fail: " . mysqli_error($con));
						$query0=mysqli_fetch_assoc($query1);
	                            $message['code'] = "200";
								$message['message'] = "success";
								
							}

							else{
								 $message['code'] = "201";
						          $message['message'] = "Locaation not Update";
							}
			   }
				else{
					    $message['code'] = "501";
						$message['message'] = "Token not found";
					
			         }

					
			echo json_encode($message);
	}

    /*=================================================
	 	get membership
	 	================================================*/ 

	function submit_membership(){
	        require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
				$date='';
	            if($membershipID=='1'){
						$date=date('Y-m-d');
	                  $date=date('Y-m-d', strtotime("+1 months", strtotime($date)));
				
				}elseif($membershipID=='2'){
					$date=date('Y-m-d');
	             $date=date('Y-m-d', strtotime("+3 months", strtotime($date)));

				}
				elseif($membershipID=='3'){
						
	             $date=date('Y-m-d');
	              $date=date('Y-m-d', strtotime("+6 months", strtotime($date)));
				}
				else{
						$date=date('Y-m-d');
	             $date=date('Y-m-d', strtotime("+12 months", strtotime($date)));
				}
				$query=mysqli_query($con,"SELECT * from `dealer_membership` where `dealer_id`='$dealerID' ") or die("Query fail: " . mysqli_error($con));
				if(mysqli_num_rows($query)>=1)
	            {
					
					$update=date('Y-m-d');
	 
					$query1=mysqli_query($con,"UPDATE `dealer_membership`set  `end_date`='$date',membership_id='$membershipID',update_at='$update' WHERE `dealer_id`='$dealerID' ") or die("Query fail: " . mysqli_error($con));
					
						if($query1){
			                            $message['code'] = "200";
										$message['message'] = "success";
										//$message['data'] 	= $reuslt;

						}
				}
				else{
					 $update=date('Y-m-d');
	              $query1=mysqli_query($con,"INSERT into  `dealer_membership` set  `end_date`='$date',membership_id='$membershipID',`dealer_id`='$dealerID',update_at='$update' ") or die("Query fail: " . mysqli_error($con));
					
						if($query1){
			                            $message['code'] = "200";
										$message['message'] = "success";
										//$message['data'] 	= $reuslt;

						}

				    }
				}
			else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	        }

					
			echo json_encode($message);
	 }


    /*=================================================
	 	reviews
	=================================================*/

	function reviews(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT r.review,d.name  FROM `review_dealer` as r left JOIN drivers as d on r.`driver_id`=d.id WHERE dealer_id='$dealerid' and location_id='$location_id' ") or die("Query fail: " . mysqli_error($con));
          
               $result = [];
					 	while($getReq=mysqli_fetch_assoc($query1)){
								array_push($result, $getReq);
							}

			if($result){
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "No Review on this location ";
			}
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}


    /*=================================================
	 	add Product
	=================================================*/

	function add_ads(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
			$query1=mysqli_query($con,"SELECT * FROM `ades` WHERE `ad_title` ='$ad_title' and `status` =2 and `dealer_id`=$dealer_id  ") or die("Query fail: " . mysqli_error($con));
             $query=mysqli_num_rows($query1);
             /*if($query>=1){
             	        $message['code'] 	= "203";
						$message['message'] = "ad Title exists";
		             
				}
				else{*/
				  $img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
				   
				    if($_FILES["ads_img"]["name"]!=""){
				        $rand_no1=rand(10000,99999);
				        $filename1 = $_FILES['ads_img']['name'];
				        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
				        $ins_img_name="ins".$rand_no1.".".$ext1;
				        $img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
				       move_uploaded_file($_FILES["ads_img"]["tmp_name"],"../img/location/".$ins_img_name);
				    }

					 $query1=mysqli_query($con,"INSERT INTO `ades` set  `dealer_id`='$dealer_id', `ad_title`='$ad_title', `description`='$description', `amount`='$paid_amount',`trajection_id`='$trajection_id',clieck='$click',total_click='$click', `image`='$img', `status`='1',from_admin='2' ") or die("Query fail: " . mysqli_error($con));
					if($query1){
		                 $message['code'] 	= "200";
						$message['message'] = "Success";
					}
					else{
						$message['code'] 	= "202";
						$message['message'] = "Try it again..";
					}
					/*}*/
					

		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}
    
    /*=================================================
	 	add list 
	=================================================*/

	function add_list(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
            $query1=mysqli_query($con,"SELECT d.name as dealer_name,d.image as dealer_img,a.* from ades as a LEFT JOIN drivers as d on d.id=a.dealer_id where a.dealer_id='$dealer_id' ORDER BY `a`.`id` DESC ") or die("Query fail: " . mysqli_error($con));
          
               $result = [];
			 	while($getReq=mysqli_fetch_assoc($query1)){
                        $getReq['created_at']= date('d-M-Y h:i', strtotime( $getReq['created_at'] ) ) ;
                        $getReq['pending_clieck']=  $getReq['clieck'] ;
                        unset($getReq['clieck']);
						array_push($result, $getReq);
					}

			if($result){
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "No ads";
			}
			$con->close();


		}
		else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}

	 /*===========================================================================
	 	Get all notifications
	============================================================================= */

	function getNotifications(){  
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$result = [];
	
		if($check){
				$notif=mysqli_query($con,"SELECT * FROM `notifications` WHERE `to_dealer` = '$dealer_id' ORDER BY `id` DESC ") or die(mysqli_error($con));
			while($getReq=mysqli_fetch_assoc($notif)){
				array_push($result, $getReq);
			}
			$message['code'] 	= "200";
			$message['message'] = "success";
			$message['data'] 	= $result;
			$con->close();
		}else{
			$message['code'] 	= "500";
			$message['message'] = "error";
			$message['data'] = (object)[
					];
		}
		echo json_encode($message);
	}

/*=================================================
	 	logout
	=================================================*/


	function logout(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
			mysqli_query($con,"UPDATE `dealer` SET `dealer_lat` = '',`dealer_long` = '',`otp`='' WHERE `id` = $dealerID");
			$message['code'] = "200";
			$message['message'] = "success";
			
			$con->close();
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	
		 /*===========================================================================
	 	Get all notifications
	============================================================================= */

	function cleare_Notifications(){  
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$result = [];
	
		if($check){
				$notif=mysqli_query($con,"DELETE FROM `notifications` WHERE `to_dealer`='$dealer_id'") or die(mysqli_error($con));
			
			$message['code'] 	= "200";
			$message['message'] = "success";
	
			$con->close();
		}else{
			$message['code'] 	= "500";
			$message['message'] = "error";
			$message['data'] = (object)[
					];
		}
		echo json_encode($message);
	}


	/*=================================================
	 	Check Authentication by token 
	=================================================*/

	function checkaccess($token,$con){
		$query1 = mysqli_query($con,"SELECT `accesstoken` FROM `token` WHERE `accesstoken` = '$token'") or mysqli_error ($con);
		if(mysqli_num_rows($query1)>0){
			return 1;
		}else{
			return 0;
			$con->close();
		}
	}

	function checklogin($contact,$deviceToken,$con){
		$query1 = mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact' and `device_token` = '$deviceToken'") or mysqli_error ($con);
		if(mysqli_num_rows($query1)>0){
			return 1;
		}else{
			return 0;
			$con->close();
		}
	}
	/*=================================================
	 	update frofile
	=================================================*/

	function update_profile_wev(){
		require('connectdb.php');
		extract($_POST);
		
		$name=$_REQUEST['name'];
		$email=$_REQUEST['email'];
		$lastname=$_REQUEST['lastname'];
		$dealerID=$_REQUEST['dealerID'];
		
         $query1=mysqli_query($con,"UPDATE  `dealer` set  `name`='$name',email='$email',l_name='$lastname' ,status=1 WHERE id='$dealerID' ") or die("Query fail: " . mysqli_error($con));
			if($query1){
				$query1=mysqli_query($con,"SELECT * FROM `dealer` WHERE id='$dealerID'") or die("Query fail: " . mysqli_error($con));
				 $query0=mysqli_fetch_assoc($query1);
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	= (object)[
							    "id"					=> $query0["id"],
								"name" 					=> $query0["name"],
								"lastname" 				=> $query0["l_name"],
								"email"					=> $query0["email"],
								"driverImg"				=> $query0["image"],
								"contact"				=> $query0["contact"],
								"devicetype"			=> $query0["device_type"],
								"device_token"			=> $query0["device_token"]
								
							];
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Not Updated";
			}
			$con->close();
		
		echo json_encode($message);
	}

		
?>