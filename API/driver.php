 <?php 
	date_default_timezone_set('Asia/Kolkata'); 
	require  '../vendor-old/autoload.php';
	use net\authorize\api\contract\v1 as AnetAPI;
use net\authorize\api\controller as AnetController;
require '../vendor/autoload.php';
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



function handle_online_pay() {
    require('connectdb.php');
	extract($_POST);
	$check = checkaccess($accesstoken,$con);
	if($check){    
 
		        /* Create a merchantAuthenticationType object with authentication details
		          retrieved from the constants file */
		        $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
		        $merchantAuthentication->setName("6y6jT3XR");
		        $merchantAuthentication->setTransactionKey("7s4J6N4j9ER23rUK");

		        // Set the transaction's refId
		        $refId = 'ref' . time();
		        $cardNumber = preg_replace('/\s+/', '', $card_number);

		        // Create the payment data for a credit card
		        $creditCard = new AnetAPI\CreditCardType();
		        $creditCard->setCardNumber($cardNumber);
		        $creditCard->setExpirationDate($date);
		        $creditCard->setCardCode($CardCode);

		        // Add the payment data to a paymentType object
		        $paymentOne = new AnetAPI\PaymentType();
		        $paymentOne->setCreditCard($creditCard);
               
               

              // Set the customer's Bill To address
			    $customerAddress = new AnetAPI\CustomerAddressType();
			    $customerAddress->setFirstName("Ellen");
			    $customerAddress->setLastName("Johnson");
			    $customerAddress->setCompany("Souveniropolis");
			    $customerAddress->setAddress("14 Main Street");
			    $customerAddress->setCity("Pecan Springs");
			    $customerAddress->setState("TX");
			    $customerAddress->setZip("44628");
			    $customerAddress->setCountry("USA");

			    // Set the customer's identifying information
		        $customerData = new AnetAPI\CustomerDataType();
                $customerData->setType("individual");
                $customerData->setId("99999456654");
                $customerData->setEmail("harbanssingh0420@gmail.com"); 
		        // Create a TransactionRequestType object and add the previous objects to it
		        $transactionRequestType = new AnetAPI\TransactionRequestType();
		        $transactionRequestType->setTransactionType("authCaptureTransaction");
		        $transactionRequestType->setAmount($amount);
		        $transactionRequestType->setPayment($paymentOne);
		       // $transactionRequestType->setBillTo($customerAddress);
               // $transactionRequestType->setCustomer($customerData);
                 

                  
		        // Assemble the complete transaction request
		        $requests = new AnetAPI\CreateTransactionRequest();
		        $requests->setMerchantAuthentication($merchantAuthentication);
		        $requests->setRefId($refId);
		        $requests->setTransactionRequest($transactionRequestType);
               
                  
		        // Create the controller and get the response
		        $controller = new AnetController\CreateTransactionController($requests);
		        $response = $controller->executeWithApiResponse(\net\authorize\api\constants\ANetEnvironment::SANDBOX);

		        if ($response != null) {
		            // Check to see if the API request was successfully received and acted upon
		            if ($response->getMessages()->getResultCode() == "Ok") {
		                // Since the API request was successful, look for a transaction response
		                // and parse it to display the results of authorizing the card
		                $tresponse = $response->getTransactionResponse();
		           
		          
		                if ($tresponse != null && $tresponse->getMessages() != null) {
		                 //   echo " Successfully created transaction with Transaction ID: " . $tresponse->getTransId() . "\n";
							// echo " Transaction Response Code: " . $tresponse->getResponseCode() . "\n";
							//echo " Message Code: " . $tresponse->getMessages()[0]->getCode() . "\n";
							// echo " Auth Code: " . $tresponse->getAuthCode() . "\n";
							// echo " Description: " . $tresponse->getMessages()[0]->getDescription() . "\n";
		                    $message_text = $tresponse->getMessages()[0]->getDescription().", Transaction ID: " . $tresponse->getTransId();
		                    $msg_type = "success_msg";    
		                 /* print_r($tresponse);
		                    exit();*/

				   $sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                   $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                   $client = new Client($sid, $token);
                   try{
				 	   $client->messages->create($contact, array('from' => '+18325699893','body' => $msg));
				 	                        $message['code'] = "200";
											$message['message'] = "success";
											$message['data']	= (object)[
												"Transaction_id"			=> $tresponse->getTransId()
											];
					}
					 catch(Exception $e)
					 {
					 	  $message['code'] = "200";
											$message['message'] = "success! contact is wrong  ";
											$message['data']	= (object)[
												"Transaction_id"			=> $tresponse->getTransId()
											];

					 }
		                    
											$tid=$tresponse->getTransId();
											 $query1=mysqli_query($con,"INSERT INTO `card_details` set `cardnumber`='$cardNumber', `card_cvv`='$CardCode', `carde_date`='$date',Transaction_id='$tid',amount='$amount'  ") or die("Query fail: " . mysqli_error($con));
		                } else {
		                    $message_text = 'There were some issue with the payment. Please try again later.';
		                    $msg_type = "error_msg";                                    
		                     $message['code'] = "201";
							  $message['message'] = "There were some issue with the payment. Please try again later";
		                    if ($tresponse->getErrors() != null) {
		                        $message_text = $tresponse->getErrors()[0]->getErrorText();
		                        $msg_type = "error_msg";  
		                        $message['code'] = "201";
							  $message['message'] = $tresponse->getErrors()[0]->getErrorText();                                  
		                    }
		                }
		                // Or, print errors if the API request wasn't successful
		            } else {
		                $message_text = 'There were some issue with the payment. Please try again later.';
		                $msg_type = "error_msg";                                    
		              
		                $tresponse = $response->getTransactionResponse();

		                if ($tresponse != null && $tresponse->getErrors() != null) {
		                    $message_text = $tresponse->getErrors()[0]->getErrorText();
		                    $msg_type = "error_msg";           
		                     $message['code'] = "201";
							  $message['message'] = $tresponse->getErrors()[0]->getErrorText();                                  
		                            
		                } else {
		                    $message_text = $response->getMessages()->getMessage()[0]->getText();
		                    $msg_type = "error_msg";
		                     $message['code'] = "201";
							 $message['message'] = $response->getMessages()->getMessage()[0]->getText();                                
		                   
		                }                
		            }
		        } else {
		            $message_text = "No response returned";
		            $msg_type = "error_msg";
		           $message['code'] = "201";
				   $message['message'] ="No response returned";                               
		                  
		        }
		}
	     else{
			    $message['code'] = "501";
				$message['message'] = "accesstoken error...";
			
			}        
         echo json_encode($message);
}

function refundTransaction()
{
	
	extract($_POST);

    /* Create a merchantAuthenticationType object with authentication details
       retrieved from the constants file */
    $merchantAuthentication = new AnetAPI\MerchantAuthenticationType();
 /*   $merchantAuthentication->setName(\SampleCodeConstants::);
    $merchantAuthentication->setTransactionKey(\SampleCodeConstants::MERCHANT_TRANSACTION_KEY);*/
        $merchantAuthentication->setName("6y6jT3XR");
		        $merchantAuthentication->setTransactionKey("7s4J6N4j9ER23rUK");
    // Set the transaction's refId
    $refId = 'ref' . time();

    // Create the payment data for a credit card
    $creditCard = new AnetAPI\CreditCardType();
    $creditCard->setCardNumber($card_number);
    $creditCard->setExpirationDate($date);
    $paymentOne = new AnetAPI\PaymentType();
    $paymentOne->setCreditCard($creditCard);
    //create a transaction
    $transactionRequest = new AnetAPI\TransactionRequestType();
    $transactionRequest->setTransactionType( "refundTransaction"); 
    $transactionRequest->setAmount($amount);
    $transactionRequest->setPayment($paymentOne);
    $transactionRequest->setRefTransId($Transaction_id);
 

    $request = new AnetAPI\CreateTransactionRequest();
    $request->setMerchantAuthentication($merchantAuthentication);
    $request->setRefId($refId);
    $request->setTransactionRequest( $transactionRequest);
    $controller = new AnetController\CreateTransactionController($request);
    $response = $controller->executeWithApiResponse( \net\authorize\api\constants\ANetEnvironment::SANDBOX);

    if ($response != null)
    {
      if($response->getMessages()->getResultCode() == "Ok")
      {
        $tresponse = $response->getTransactionResponse();
        
	      if ($tresponse != null && $tresponse->getMessages() != null)   
        {
          echo " Transaction Response code : " . $tresponse->getResponseCode() . "\n";
          echo "Refund SUCCESS: " . $tresponse->getTransId() . "\n";
          echo " Code : " . $tresponse->getMessages()[0]->getCode() . "\n"; 
	        echo " Description : " . $tresponse->getMessages()[0]->getDescription() . "\n";
        }
        else
        {
          echo "Transaction Failed \n";
          if($tresponse->getErrors() != null)
          {
            echo " Error code  : " . $tresponse->getErrors()[0]->getErrorCode() . "\n";
            echo " Error message : " . $tresponse->getErrors()[0]->getErrorText() . "\n";            
          }
        }
      }
      else
      {
        echo "Transaction Failed \n";
        $tresponse = $response->getTransactionResponse();
        if($tresponse != null && $tresponse->getErrors() != null)
        {
          echo " Error code  : " . $tresponse->getErrors()[0]->getErrorCode() . "\n";
          echo " Error message : " . $tresponse->getErrors()[0]->getErrorText() . "\n";                      
        }
        else
        {
          echo " Error code  : " . $response->getMessages()->getMessage()[0]->getCode() . "\n";
          echo " Error message : " . $response->getMessages()->getMessage()[0]->getText() . "\n";
        }
      }      
    }
    else
    {
      echo  "No response returned \n";
    }

    return $response;
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

		$query2 =  mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact'") or mysqli_error ($con);
		$query2=mysqli_num_rows($query2);
          if($query2!="1"){

				 $query1 =  mysqli_query($con,"SELECT `id` FROM `drivers` WHERE `contact` = '$contact'") or mysqli_error ($con);
				$query1=mysqli_num_rows($query1);
				if($query1=="1")
				{
					 
					            $message['code'] = "201";
								$message['message'] = "You're registered yet. Please Login ";
				}
				else{
					
					
					  
					  	$sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                       $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                       $client = new Client($sid, $token);
                       try{
					 	//$client->messages->create($contact, array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));
					 	 $query2=mysqli_query($con,"INSERT INTO `drivers` set `contact` = '$contact' ,status=0 ,otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token' ") or die("Query fail: " . mysqli_error($con));

					 	           $message['code'] = "200";
									$message['message'] = "success";
									$message['data']	= (object)[
										"otp"			=> $otp
									];
						 }
						 catch(Exception $e)
						 {
						 	$query2=mysqli_query($con,"INSERT INTO `drivers` set `contact` = '$contact' ,status=0 ,otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token' ") or die("Query fail: " . mysqli_error($con));
						 	        $message['code'] = "200";
									$message['message'] = "Please Enter valid number";
									$message['data']	= (object)[
										"otp"			=> $otp
									];
 
						 }
									
				       
		        }
            }
	        else{
	    	            $message['code'] = "203";
					$message['message'] = "This number is already exist in Dealer side";
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

				$query1 =  mysqli_query($con,"SELECT `id` FROM `drivers` WHERE `contact` = '$contact'") or mysqli_error ($con);
				$query1=mysqli_num_rows($query1);
				if($query1=="1")
				{
				 	
				   $sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                   $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                   $client = new Client($sid, $token);
                   try{
				 	   //$client->messages->create($contact, array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));

				       $query2=mysqli_query($con,"UPDATE  `drivers` set otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token'  WHERE `contact` = '$contact' ") or die("Query fail: " . mysqli_error($con));
							$message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							
								"otp"			=> $otp
							];
					}
					 catch(Exception $e)
					 {
					 	$query2=mysqli_query($con,"UPDATE  `drivers` set otp= $otp ,otp_expire='$date',device_type='$device_type',device_token='$device_token'  WHERE `contact` = '$contact' ") or die("Query fail: " . mysqli_error($con));
					 	        $message['code'] = "202";
								$message['message'] = "Please Enter valid number";
								$message['data']	= (object)[
									"otp"			=> $otp
								];

					 }
					
					$con->close();
				}
				else{
					            $message['code'] = "201";
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
	// verify otp
	// ======================================================================

	function verify_otp(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$contact=trim($contact);
        $date = date('H:i:s'); 
		
	  if($check){
		$qu=mysqli_query($con,"UPDATE `drivers` set status=1 WHERE `contact` = '$contact'") or die("Query fail: " . mysqli_error($con));
			 $query1 =  mysqli_query($con,"SELECT `id` FROM `drivers` WHERE `contact` = '$contact' and otp='$otp' and otp_expire>'$date' ") or mysqli_error ($con);
            $query1=mysqli_fetch_assoc($query1);
			 
			
            if($query1){
            	$query1=mysqli_query($con,"SELECT * FROM `drivers` WHERE `contact` = '$contact'") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);


                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							    "id"					=> $query0["id"],
								"name" 					=> $query0["name"],
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
	 	update location
	=================================================*/

	function update_location(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
                $query1=mysqli_query($con,"UPDATE  `drivers` set `driver_lat`='$driver_lat', `driver_long`='$driver_long'  WHERE id='$driver_id' ") or die("Query fail: " . mysqli_error($con));

				$message['code'] 	= "200";
				$message['message'] = "Success";
				
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
	 	get_driver_location location
	=================================================*/

	function get_driver_location(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
             $query1=mysqli_query($con,"SELECT id,name,driver_lat,driver_long,contact,email,img_icon from drivers WHERE driver_lat!='' and  `driver_long`!=''") or die("Query fail: " . mysqli_error($con));
          
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
	 	update frofile
	=================================================*/

	function update_profile(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
    

         $query1=mysqli_query($con,"UPDATE  `drivers` set  `name`='$name',email='$email',`part_no`='$part_no', `product_name`='$product_name', `trailer_year`='$trailer_year', `description`='$description',traler_menufacter='$traler_menufacter',brack_type='$brack_type', wheel_stud='$wheel_stud',hub_diameter='$hub_diameter',brake_actuation='$brake_actuation',ez_labe='$ez_labe',axle_weight_capacity='$axle_weight_capacity',axle_manufacturer='$axle_manufacturer',vehicle_name='$vehicle_name',vehicle_num='$vehicle_num',img_icon='$img_icon'  WHERE id='$driverID'") or die("Query fail: " . mysqli_error($con));
			if($query1){
				 	$query1=mysqli_query($con,"SELECT * from drivers WHERE id='$driverID' and status=1") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							    "id"			        => $query0["id"],
								"name" 			        => $query0["name"],
								"image"			        => $query0["image"],
								"email"			        => $query0["email"],
								"contact"		        => $query0["contact"],
								"wheel_stud" 	        => $query0["wheel_stud"],
								"hub_diameter"          => $query0["hub_diameter"],
								"brake_actuation"		=> $query0["brake_actuation"],
								"ez_labe" 	            => $query0["ez_labe"],
								"axle_weight_capacity"  => $query0["axle_weight_capacity"],
								"axle_manufacturer"	    => $query0["axle_manufacturer"],
								"vehicle_name"      	=> $query0["vehicle_name"],
								"vehicle_num"	        => $query0["vehicle_num"],
								"traler_menufacter"	        => $query0["traler_menufacter"],
								"brack_type"	        => $query0["brack_type"],
								
								"part_no"                => $query0["part_no"],
								"product_name"	        => $query0["product_name"],
								"trailer_year"      	=> $query0["trailer_year"],
								"img_icon"      	    => $query0["img_icon"],
								"description"	        => $query0["description"]
								
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
	 	GET Profile
	=================================================*/

	function get_profile()
	{
         require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
		
            	$query1=mysqli_query($con,"SELECT * from drivers WHERE id='$driverID' and status=1") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							    "id"			        => $query0["id"],
								"name" 			        => $query0["name"],
								"image"			        => $query0["image"],
								"img_icon"      	    => $query0["img_icon"],
								"email"			        => $query0["email"],
								"contact"		        => $query0["contact"],
								"wheel_stud" 	        => $query0["wheel_stud"],
								"hub_diameter"          => $query0["hub_diameter"],
								"brake_actuation"		=> $query0["brake_actuation"],
								"ez_labe" 	            => $query0["ez_labe"],
								"axle_weight_capacity"  => $query0["axle_weight_capacity"],
								"axle_manufacturer"	    => $query0["axle_manufacturer"],
								"vehicle_name"      	=> $query0["vehicle_name"],
								"vehicle_num"	        => $query0["vehicle_num"],
								"part_no"               => $query0["part_no"],
								"product_name"	        => $query0["product_name"],
								"trailer_year"      	=> $query0["trailer_year"],
								"traler_menufacter"	        => $query0["traler_menufacter"],
								"brack_type"	        => $query0["brack_type"],
								"description"	        => $query0["description"]
								
							];
		   }
	        else{
				    $message['code'] = "501";
					$message['message'] = "Token not found";
             }
		echo json_encode($message);
    }

    /*=================================================
	 	update Image
	=================================================*/

	function update_profile_image(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
         $driver_img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
		   
		    if($_FILES["driver_img"]["name"]!=""){
		        $rand_no1=rand(10000,99999);
		        $filename1 = $_FILES['driver_img']['name'];
		        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
		        $ins_img_name="ins".$rand_no1.".".$ext1;
		        $driver_img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
		       move_uploaded_file($_FILES["driver_img"]["tmp_name"],"../img/location/".$ins_img_name);
		    }
           $query1=mysqli_query($con,"UPDATE  `drivers` set `image`='$driver_img' WHERE id='$driverID'") or die("Query fail: " . mysqli_error($con));
			if($query1){
				 	$query1=mysqli_query($con,"SELECT image,id from drivers WHERE id='$driverID' and status=1") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							 
								"image"			        => $query0["image"]
								
								
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
	 	admin product
	=================================================*/



	function Axle_Manufacturer(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT Axle_Manufacturer FROM `admin_product` WHERE `strat_year`<= '$year' and `end_year`>='$year' GROUP by Axle_Manufacturer") or die("Query fail: " . mysqli_error($con));
         
               $result = [];
               
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}

        

            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	axle weghit capsity
	=================================================*/



	function axle_weghit_capsity(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT `start_weight`,`to_weight` FROM `admin_product` WHERE (`strat_year`<= '$year' and `end_year`>='$year') and Axle_Manufacturer like '%$Axle_Manufacturer%' ") or die("Query fail: " . mysqli_error($con));
               $max = [];
               $min = [];
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($min, $getReq['start_weight']);
					 	    array_push($max, $getReq['to_weight']);
						}

         
            if(isset($min) && isset($max)){
                $min=  min($min);
                $max = max($max);
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  (object)[
							    "min"					=> $min,
								"max" 					=> $max
							];			
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	EZ Lobe
	=================================================*/



	function EZ_Lube(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT `EZ_Lube` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') GROUP by `EZ_Lube` ") or die("Query fail: " . mysqli_error($con));
              /*echo "SELECT `EZ_Lube` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') GROUP by `EZ_Lube` ";
              exit();*/
					 	 $result = [];
               
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}
            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	brake type
	=================================================*/

	function brake_type(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT `Brake_Type` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%')  and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' ) GROUP by `Brake_Type` ") or die("Query fail: " . mysqli_error($con));

         /*echo "SELECT `Brake_Type` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%')  and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' ) GROUP by `Brake_Type` ";
              exit();*/
                    $result = [];
               
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}
            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	Brake_Actuation_Type
	=================================================*/

	function Brake_Actuation_Type(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
       	 	 $result = [];

              $query1=mysqli_query($con,"SELECT `Brake_Actuation_Type` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') and (`Brake_Type` ='NA' or `Brake_Type`	 like '%$Brake_Type%') and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' ) GROUP by `Brake_Actuation_Type` ") or die("Query fail: " . mysqli_error($con));



					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}
            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	Hub_Diameter
	=================================================*/

	function Hub_Diameter(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){

			if ($Brake_Actuation_Type=='Electric')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'Electric'  or `Brake_Actuation_Type` = 'Electric or Electric/Hydraulic' or `Brake_Actuation_Type` = 'Electric or Hydraulic or Electric/Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Electric/Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Electric or Electric/Hydraulic' or `Brake_Actuation_Type`='Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic or Electric/Hydraulic')";
		}
		else{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'None')";
		}

        $query1=mysqli_query($con,"SELECT `Hub_Diameter` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') and (`Brake_Type` ='NA' or `Brake_Type`	 like '%$Brake_Type%') and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' )  and $brakt GROUP by `Hub_Diameter` ") or die("Query fail: " . mysqli_error($con));
               
					 	 $result = [];

               
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}
            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	Wheel_Stud_Diameter
	=================================================*/

	function Wheel_Stud_Diameter(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){

			if ($Brake_Actuation_Type=='Electric')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'Electric'  or `Brake_Actuation_Type` = 'Electric or Electric/Hydraulic' or `Brake_Actuation_Type` = 'Electric or Hydraulic or Electric/Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Electric/Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Electric or Electric/Hydraulic' or `Brake_Actuation_Type`='Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic or Electric/Hydraulic')";
		}
		else{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'None')";
		}

        $query1=mysqli_query($con,"SELECT `Wheel_Stud_Diameter` FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') and (`Brake_Type` ='NA' or `Brake_Type`	 like '%$Brake_Type%') and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' )  and $brakt and(`Hub_Diameter`='NA' or `Hub_Diameter` ='$Hub_Diameter') GROUP by `Wheel_Stud_Diameter` ") or die("Query fail: " . mysqli_error($con));
               
              
					 	 $result = [];
               
					 	while($getReq=mysqli_fetch_assoc($query1)){
					 		array_push($result, $getReq);
							}
            if($result)
            {
				$message['code'] 	= "200";
				$message['message'] = "Success";
				$message['data']	=  $result;
			}
			else{
				$message['code'] 	= "201";
				$message['message'] = "Data not found";
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
	 	Admin product data 
	=================================================*/

	function product_data()
	{
        require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
			//$check_login = checklogin($contact,$deviceToken,$con);
			if($check){
		if ($Brake_Actuation_Type=='Electric')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'Electric'  or `Brake_Actuation_Type` = 'Electric or Electric/Hydraulic' or `Brake_Actuation_Type` = 'Electric or Hydraulic or Electric/Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic')";
		}
		elseif($Brake_Actuation_Type=='Electric/Hydraulic')
		{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type`='Electric or Hydraulic or Electric/hydraulic' or `Brake_Actuation_Type`='Electric or Electric/Hydraulic' or `Brake_Actuation_Type`='Electric/hydraulic' or `Brake_Actuation_Type`='Hydraulic or Electric/Hydraulic')";
		}
		else{
			$brakt= "(`Brake_Actuation_Type`='NA'  or `Brake_Actuation_Type` = 'None')";
		}
            	  $query1=mysqli_query($con,"SELECT  `Partno`,`product_name`,`Description`,image FROM `admin_product` WHERE (`start_weight`<=$axle_weghit_capsity and `to_weight`>=$axle_weghit_capsity) and (`strat_year`<= '$year' and `end_year`>='$year') and (Axle_Manufacturer like '%$Axle_Manufacturer%') and (`Brake_Type` ='NA' or `Brake_Type`	 like '%$Brake_Type%') and  (`EZ_Lube`='NA' or `EZ_Lube` ='$EZ_Lube' )  and $brakt and(`Hub_Diameter`='NA' or `Hub_Diameter` ='$Hub_Diameter') and (`Wheel_Stud_Diameter` = 'NA' or `Wheel_Stud_Diameter` = '$Wheel_Stud_Diameter') ORDER BY `admin_product`.`Partno` ASC  ") or die("Query fail: " . mysqli_error($con));
     



                 $part = [];
                 $product_name = [];
                 $Description = [];
            	  while($getReq=mysqli_fetch_assoc($query1)){
                               $getReq1["Partno"]=$getReq["Partno"];
					 		//array_push($part, $getReq1);
					 		  $getReq1["product_name"]= $getReq["product_name"];
					 		//array_push($product_name,$getReq2);
					 		 $getReq1["Description"]= $getReq["Description"];
					 		 $getReq1["image"]= $getReq["image"];
					 		array_push($Description, $getReq1);
							}
 /*print_r($Description);
 exit();*/
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= $Description;
							/*$message['data']	= (object)[
								"Partno" 			     => $part,
								"product_name"			 => $product_name,
								"Description"			 => $Description
							];*/
		   }
	        else{
				    $message['code'] = "501";
					$message['message'] = "Token not found";
             }
		echo json_encode($message);
    }



    /*=================================================
	 	driver location
	=================================================*/

function driver_location()
{
       require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
		
		$qu=mysqli_query($con,"UPDATE drivers set `driver_lat`='$driver_lat', `driver_long` ='$driver_long' WHERE `id`=$driverID") or die("Query fail: " . mysqli_error($con));
			
			
            if($qu){
            	$query1=mysqli_query($con,"SELECT * FROM `drivers` WHERE `id`=$driverID ") or die("Query fail: " . mysqli_error($con));
					$query0=mysqli_fetch_assoc($query1);
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data']	= (object)[
							    "id"					=> $query0["id"],
								"name" 					=> $query0["name"],
								"driver_lat"			=> $query0["driver_lat"],
								"driver_long"			=> $query0["driver_long"]
							
							];
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
// =====================================================================================
	// mambership
	// =====================================================================================

	function get_membership()
	 {  
		  require('connectdb.php');
		header("Access-Control-Allow-Origin: *");
			$query1=mysqli_query($con,"SELECT * FROM `membership` WHERE status=1 ") or die("Query fail: " . mysqli_error($con));
					$result = [];
                          
							

					 	while($getReq=mysqli_fetch_assoc($query1)){
								array_push($result, $getReq);
							}
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $result;
                          
							
					
				
			echo json_encode($message);
     }

/*=================================================
	 	near dealer
	=================================================*/

	function near_dealer()
	{
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
	  /*$src_lati ='31.25370500000001';
      $src_long='-92.53899899999999';*/
        $reuslt = [];

       if($membership=='1'){       
    	$query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE status=1 and (`dealer_lat`!='' and dealer_long!='') ") or die("Query fail: " . mysqli_error($con));
    	}
    	else{
        $query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE status=1 and ( `dealer_lat`!='' and dealer_long!='' ) and (`contact` like '480-545-5%') ") or die("Query fail: " . mysqli_error($con));
    	}
    	//if(mysqli_num_rows($query1)>0){
				while($query=mysqli_fetch_assoc($query1)){
					$distance = getDistance( $src_lati, $src_long, $query['dealer_lat'],$query['dealer_long']);
					        
					         $loc=explode(",",$query['location']);

				   // if($distance>=0 && $distance<=25){

					          	$data['id']=$query['id'];
						        $data['name']=$query['name'];
					         	$data['dealer_lat']=$query['dealer_lat'];
					         	 
					         	$data['dealer_long']=$query['dealer_long'];
					         	$data['location']=$loc[0];
					         	$data['ditance']=$distance;
						array_push($reuslt,$data);
						
					//}
				}
			//}

         $sorted_data = orderBy($reuslt, 'ditance');
			           
							
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $sorted_data;
		}					
		else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	    }

				
		echo json_encode($message);

    }
function orderBy($data, $field)
  {
    $code = "return strnatcmp(\$a['$field'], \$b['$field']);";
    usort($data, create_function('$a,$b', $code));
    return $data;
  }

  
/*=================================================
	 	near dealer oaation
	=================================================*/

function near_dealer_location()
{
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
		//  $src_lati ='29.942404';
	     // $src_long='-91.769531';
        $reuslt = [];

       if($membership=='1'){       
    	$query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE status=1 and ( `dealer_lat`!='' and dealer_long!='') ") or die("Query fail: " . mysqli_error($con));
    	}
    	else{
        $query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE status=1 and ( `dealer_lat`!='' and dealer_long!='') and (`contact` like '480-545-5%') ") or die("Query fail: " . mysqli_error($con));
    	}
    	//if(mysqli_num_rows($query1)>0){
				while($query=mysqli_fetch_assoc($query1)){
					$distance = getDistance( $src_lati, $src_long, $query['dealer_lat'],$query['dealer_long']);

					     $que=mysqli_query($con,"SELECT *  FROM `dealer_crunt_location` WHERE `dealer_id` = $query[id]  and ( `d_lat`!='' and d_lont!='') ") or die("Query fail: " . mysqli_error($con));    
					      $quea=mysqli_fetch_assoc($que);

				   if($distance>=0 && $distance<=25){
					      if($query['dealer_lat']!=$quea['d_lat'] && $query['dealer_long']!=$quea['d_lont'] ){
					      	$loc=explode(",",$query['location']);
                             	$data['id']=$query['id'];
						        $data['name']=$query['name'];
					         	$data['dealer_lat']=$quea['d_lat'];
					         	$data['dealer_long']=$quea['d_lont'];
					         	$data['location']=$loc[0];
					         	$data['ditance']=$distance;
						     array_push($reuslt,$data);
					        }
					     
					          
						
					}
				}
			//}


			
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $reuslt;
		}					
		else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	    }

				
		echo json_encode($message);

}




/*=================================================
	 	filter
	=================================================*/

function filter()
{
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		
		if($check){
	
        $reuslt = [];
       
       if($membership=='1'){       
    	$query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE `dealer_lat`!='' and dealer_long!='' ") or die("Query fail: " . mysqli_error($con));
    	}
    	else{
    	$query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE `dealer_lat`!='' and dealer_long!='' and `contact` like '480-545-5%' ") or die("Query fail: " . mysqli_error($con));	
    	}
    	if(mysqli_num_rows($query1)>0){
				while($query=mysqli_fetch_assoc($query1)){
					$distance = getDistance( $src_lati, $src_long, $query['dealer_lat'],$query['dealer_long']);
					        
					

					if($distance>=0 && $distance<=$mils){
							$loc=explode(",",$query['location']);
					          	$data['id']=$query['id'];
						        $data['name']=$query['name'];
					         	$data['dealer_lat']=$query['dealer_lat'];
					         	 
					         	$data['dealer_long']=$query['dealer_long'];
					         	$data['location']=$loc[0];
					         	$data['ditance']=$distance;
						array_push($reuslt,$data);
						
					}
				}
			}

            $sorted_data = orderBy($reuslt, 'ditance');
			           
							
                           
			if($sorted_data!=null){
                        $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $sorted_data;

			}else{
                      $message['code'] = "202";
							$message['message'] = "No Dealer available nearby";
							
			}




          }             
		else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	    }

				
		echo json_encode($message);

}
/*=================================================
	 	dealer profile
	=================================================*/ 

 function get_dealer_profile()
 {
       require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
				$query1=mysqli_query($con,"SELECT * FROM `dealer` WHERE `id` = '$dealerId'") or die("Query fail: " . mysqli_error($con));
						$query0=mysqli_fetch_assoc($query1);

				$query2=mysqli_query($con,"SELECT * FROM `fav_dealer` WHERE `driver_id` = '$driverId' and `dealer_id` = '$dealerId'") or die("Query fail: " . mysqli_error($con));
									$query2=mysqli_fetch_assoc($query2);
									
				$query3=mysqli_query($con,"SELECT * FROM `like_dealer` WHERE `driver_id` = '$driverId' and `dealer_id` = '$dealerId'") or die("Query fail: " . mysqli_error($con));
							$query3=mysqli_fetch_assoc($query3);			
                                   $loc=explode(",",$query0['location']);
		                            $message['code'] = "200";
									$message['message'] = "success";
									$message['data']	= (object)[
									    "id"					=> $query0["id"],
										"name" 					=> $query0["name"],
										"driverImg"				=> $query0["image"],
										"fav_status"			=> $query2["status"],
										"like_status"			=> $query3["status"],
										"contact"				=> $query0["contact"],
										"dealer_lat"			=> $query0["dealer_lat"],
										"dealer_long"			=> $query0["dealer_long"],
										"location"			=> $loc[0]
									];
			}
			else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
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
         $query1=mysqli_query($con,"SELECT id,location_title,location FROM `add_location` WHERE `dealer_id` ='$dealerID'") or die("Query fail: " . mysqli_error($con));
          
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
				$message['message'] = "location not found";
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

	function update_location_update(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
			$queq =  mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` ") or mysqli_error ($con);
			
			while($query=mysqli_fetch_assoc($queq)){
          
                  $query3=mysqli_query($con,"INSERT into  `dealer_crunt_location` set `d_lat`='$query[dealer_lat]', `d_lont`='$query[dealer_long]' ,dealer_id='$query[id]' ,status='1' ") or die("Query fail: " . mysqli_error($con));

						$message['code'] 	= "200";
						$message['message'] = "Success";
			
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
	 	ads list
	=================================================*/

	function ads_list(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
         $query1=mysqli_query($con,"SELECT * FROM `ades` where status=2 and clieck>0 or from_admin=1 ") or die("Query fail: " . mysqli_error($con));
          
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
				$message['message'] = "location not found";
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
	 	search dealer
	=================================================*/ 

 function search_dealer()
 {
       require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
            $reuslt=[];
           if($membership=='1'){   
			$query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE `dealer_lat`!='' and dealer_long!='' and location LIKE '%$location%' or name LIKE '%$location%' ") or die("Query fail: " . mysqli_error($con));
		    }
		    else{
		    $query1=mysqli_query($con,"SELECT name,id,dealer_lat,dealer_long,location  FROM `dealer` WHERE `dealer_lat`!='' and dealer_long!='' and location LIKE '%$location%' or name LIKE '%$location%' and `contact` like '480-545-5%' ") or die("Query fail: " . mysqli_error($con));	
		    }


		if(mysqli_num_rows($query1)>0){
				while($query=mysqli_fetch_assoc($query1)){
					$distance = getDistance( $src_lati, $src_long, $query['dealer_lat'],$query['dealer_long']);
					             $data['id']=$query['id'];
						        $data['name']=$query['name'];
					         	$data['dealer_lat']=$query['dealer_lat'];
					         	$data['dealer_long']=$query['dealer_long'];
					         	$data['location']=$query['location'];
					         	$data['ditance']=$distance;
						array_push($reuslt,$data);
				//array_push($reuslt,$query);
				}
			}
			if($reuslt!=null){
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $reuslt;

			}else{
                      $message['code'] = "202";
					$message['message'] = "No Dealer available in this Locaation";
							
			}


		   }
			else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	           }

				
		echo json_encode($message);

 }

/*=================================================
	 	Add dealer review
	=================================================*/ 

 function dealer_review(){
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
            

			$query1=mysqli_query($con,"INSERT INTO `review_dealer`set `dealer_id`='$dealerID', `driver_id`='$driverID', `review`='$review',location_id='$location_id' ") or die("Query fail: " . mysqli_error($con));
		
			if($query1){

				 $querynot =  mysqli_query($con,"SELECT device_token,device_type,id FROM `dealer`where id='$dealerID' ") or mysqli_error ($con);
			            $querynot=mysqli_fetch_assoc($querynot);

			            $driver_name =  mysqli_query($con,"SELECT name FROM `drivers` where id='$driverID' ") or mysqli_error ($con);
			            $driver_name=mysqli_fetch_assoc($driver_name);
			             $device_token = $querynot["device_token"];
						$devtype   = $querynot["device_type"];
						$badge = '0';
						$title = "Trailer";
					    $mymessage = "You got new review ".$driver_name['name'];

						$req_status="3";
						$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
					    push_notification($device_token,$devtype,$mymessage,$title,'3' ,$req_status,$badge,$dealertl);
					    mysqli_query($con,"INSERT INTO  `notifications` (`to_dealer`,`noti_message`) VALUES('$dealerID','$mymessage')")or die(mysqli_error($con));


                $message['code'] = "200";
				$message['message'] = "success";
				//$message['data'] 	= $reuslt;

			}else{
                      $message['code'] = "202";
					$message['message'] = "Try again";
							
			}


		}
		else{
		    $message['code'] = "501";
			$message['message'] = "Token not found";
		
          }

				
		echo json_encode($message);

    }

	/*=================================================
			get product
	=================================================*/ 
	function get_product(){
			require('connectdb.php');
			extract($_POST);
			$check = checkaccess($accesstoken,$con);
		
		if($check){
		      $query1=mysqli_query($con,"SELECT p.*,d.name,d.contact FROM `product` as p JOIN dealer as d on p.dealer_id=d.id ORDER BY `p`.`id` DESC") or die("Query fail: " . mysqli_error($con));
					  
					$result = [];
						
								while($getReq=mysqli_fetch_assoc($query1)){
										array_push($result, $getReq);
									}
									$message['code'] = "200";
									$message['message'] = "success";
									$message['data'] 	= $result;
								  
									
		 }
			else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	          }			
						
					echo json_encode($message);

	}

		  /*=================================================
	 	search dealer
	=================================================*/ 

 function search_dealer_product()
 {
       require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
            $reuslt=[];
          
			$query1=mysqli_query($con,"SELECT p.*,d.name,d.contact FROM `product` as p JOIN dealer as d on p.dealer_id=d.id where p.product_name LIKE '%$product_name%' ") or die("Query fail: " . mysqli_error($con));
		  

		if(mysqli_num_rows($query1)>0){
				while($query=mysqli_fetch_assoc($query1)){
					
				array_push($reuslt,$query);
				}
			}
			if($reuslt!=null){
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $reuslt;

			}else{
                      $message['code'] = "202";
					$message['message'] = "No Product available in this name";
							
			}


		   }
			else{
			    $message['code'] = "501";
				$message['message'] = "Token not found";
			
	           }

				
		echo json_encode($message);

 }

	/*=================================================
		 	favert dealer
	=================================================*/ 

 function fav_dealer(){
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
            $query0=mysqli_query($con,"SELECT * from `fav_dealer` WHERE `dealer_id`='$dealerID' and `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
            if(mysqli_num_rows($query0)>=1)
            {
            	$st='';
            	$query=mysqli_fetch_assoc($query0);
            	$status=$query['status'];
            	if($status==1){
                 $st='2';
            	}
            	else{
                   $st='1';
            	}
            	 
              $query1=mysqli_query($con,"UPDATE `fav_dealer`set `status`='$st' WHERE  `dealer_id`='$dealerID' and `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
		
				if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['status_code'] 	= $st;

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
            }

            else{
            	$st='1';
			$query1=mysqli_query($con,"INSERT INTO `fav_dealer`set `dealer_id`='$dealerID', `driver_id`='$driverID', `status`='$st' ") or die("Query fail: " . mysqli_error($con));
		
				if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['status_code'] 	= $st;

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
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
	 	favert dealer list
	=================================================*/ 

 function fav_dealer_list(){
        require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		//$check_login = checklogin($contact,$deviceToken,$con);
		if($check){
			$query0=mysqli_query($con,"SELECT driver_lat,driver_long from drivers WHERE `id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
			$ret=mysqli_fetch_assoc($query0);
		

			$lat= $ret['driver_lat'];
			$long= $ret['driver_long'];
			/*			echo "SELECT d.name,d.location ,d.dealer_lat,d.dealer_long,f.id from `fav_dealer` as f LEFT JOIN dealer as d on f.dealer_id=d.id WHERE `driver_id`='$driverID' and f.status=1 ";
			 exit();*/
            $query1=mysqli_query($con,"SELECT d.name,d.location,d.id as dealer_id,d.dealer_lat,d.dealer_long,f.id from `fav_dealer` as f LEFT JOIN dealer as d on f.dealer_id=d.id WHERE f.`driver_id`='$driverID' and f.status=1 ") or die("Query fail: " . mysqli_error($con));
            $result = [];
					 	while($getReq=mysqli_fetch_assoc($query1)){
                           $distance = getDistance( $lat, $long, $getReq['dealer_lat'],$getReq['dealer_long']);
                             	$data['id']=$getReq['id'];
						        $data['name']=$getReq['name'];
					         	$data['dealer_id']=$getReq['dealer_id'];
					         	$data['location']=$getReq['location'];
					         	$data['ditance']=$distance;

								array_push($result, $data);
							}
                           
                            $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $result;
		 }
		else{
		    $message['code'] = "501";
			$message['message'] = "Token not found";
		
            }

				
		echo json_encode($message);

 }
/*=================================================
	 	Like unlike
================================================*/ 


	function like_dealer(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT * from `like_dealer` WHERE `dealer_id`='$dealerID' and `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
            if(mysqli_num_rows($query0)>=1)
            { 
            	$query1=mysqli_query($con,"UPDATE `like_dealer`set `status`='$status' WHERE  `dealer_id`='$dealerID' and `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
		
				if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['status_code'] 	= $status;

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}

            }
            else
            {
            	$query1=mysqli_query($con,"INSERT INTO `like_dealer`set `dealer_id`='$dealerID', `driver_id`='$driverID', `status`='$status' ") or die("Query fail: " . mysqli_error($con));
		
				if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['status_code'] 	= $status;

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
            }
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	


/*=================================================
	 	history
================================================*/ 


	function history(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT r.id as review_id,r.create_at,r.dealer_id as dealer_id, r.review,r.driver_id, d.name,a.location from review_dealer as r LEFT JOIN dealer as d on r.dealer_id=d.id LEFT JOIN add_location as a on a.dealer_id=r.dealer_id  where r.driver_id='$driverID' ORDER BY `review_id` DESC ") or die("Query fail: " . mysqli_error($con));
		         $query=mysqli_fetch_assoc($query0);
		         $mainArray=array();
		         foreach($query0 as $row){
		         	
		         	 $query1=mysqli_query($con,"SELECT * from like_dealer WHERE driver_id=$row[driver_id] and dealer_id=$row[dealer_id] ") or die("Query fail: " . mysqli_error($con));
                         $query1=mysqli_fetch_assoc($query1);
		         	 $data['like_status']=$query1['status'];
		         	 $data['review']=$row['review'];
		         	 $data['name']=$row['name'];
		         	 $data['location']=$row['location'];
		         	
		         	 array_push($mainArray,$data);
		         }
		                   $message['code'] = "200";
							$message['message'] = "success";
							$message['data'] 	= $mainArray;

			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
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
			
			$query=mysqli_query($con,"SELECT * from `driver_membership` where `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
			if(mysqli_num_rows($query)>=1)
            {
            	$query=mysqli_fetch_assoc($query);
               $end_date=$query['end_date'];
               $cur_date=date('Y-m-d');
               if($end_date>=$cur_date){
               	$date=$end_date;
               }
               else{
               $date=$cur_date;
               }
                    $query=mysqli_query($con,"SELECT * from `driver_membership` where `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
            if($membershipID=='1'){

                  $date=date('Y-m-d', strtotime("+1 months", strtotime($date)));
			}elseif($membershipID=='2'){
             $date=date('Y-m-d', strtotime("+3 months", strtotime($date)));
			}
			elseif($membershipID=='3'){
              $date=date('Y-m-d', strtotime("+6 months", strtotime($date)));
			}
			elseif($membershipID=='4'){
             $date=date('Y-m-d', strtotime("+12 months", strtotime($date)));
			}
			else{
				$date=0;
			}
			
			// echo $date;
			 $update=date('Y-m-d');

			 $query1=mysqli_query($con,"UPDATE `driver_membership`set  `end_date`='$date',membership_id='$membershipID',update_at='$update',status=1 WHERE `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
             $query=mysqli_query($con,"SELECT * from `driver_membership` where `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
             $query=mysqli_fetch_assoc($query);
               $end_date=$query['end_date'];
			                       $message['code'] = "200";
									$message['message'] = "success";
									$message['data'] 	=(object)[
	                                        'status' => $query['status']
	                                 ];
					                 

						
			}
			else{
				$date=date('Y-m-d');
				if($membershipID=='1'){
                   
                  $date=date('Y-m-d', strtotime("+1 months", strtotime($date)));
			}elseif($membershipID=='2'){
             $date=date('Y-m-d', strtotime("+3 months", strtotime($date)));
			}
			elseif($membershipID=='3'){
              $date=date('Y-m-d', strtotime("+6 months", strtotime($date)));
			}
			elseif($membershipID=='4'){
             $date=date('Y-m-d', strtotime("+12 months", strtotime($date)));
			}
			else{
				$date=0;
			}
              $update=date('Y-m-d');
              $query1=mysqli_query($con,"INSERT into  `driver_membership` set  `end_date`='$date',membership_id='$membershipID',`driver_id`='$driverID',update_at='$update',status=1 ") or die("Query fail: " . mysqli_error($con));
				$query=mysqli_query($con,"SELECT * from `driver_membership` where `driver_id`='$driverID' ") or die("Query fail: " . mysqli_error($con));
             $query=mysqli_fetch_assoc($query);
               $end_date=$query['end_date'];
			                       $message['code'] = "200";
									$message['message'] = "success";
									$message['data'] 	=(object)[
	                                        'status' => $query['status']
	                                 ];
				
		       }
		}     
		else{
		    $message['code'] = "501";
			$message['message'] = "Token not found";
		
        }

				
		echo json_encode($message);

 }


/*=================================================
	 	get membership status
================================================*/ 
function get_membership__status()
{
	require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			$date=date('Y-m-d');
			$query=mysqli_query($con,"SELECT * from `driver_membership` where `driver_id`='$driverID' and end_date >= '$date' ") or die("Query fail: " . mysqli_error($con));
             $query=mysqli_fetch_assoc($query);
               $end_date=$query['end_date'];
			                       $message['code'] = "200";
									$message['message'] = "success";
									$message['data'] 	=(object)[
	                                        'status' => $query['status']
	                                 ];
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
}



	function logout(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			mysqli_query($con,"UPDATE `drivers` SET `driver_lat` = '',`driver_long` = '',`otp`='' WHERE `id` = $driverID");
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


/*=================================================
	 	history
================================================*/ 


	function click_ad(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT * from ades where id=$ad_id") or die("Query fail: " . mysqli_error($con));
		         $query=mysqli_fetch_assoc($query0);
		         
		        
		         if($query['clieck']>1){
                    
                    $chec=$query['clieck']-1;
                    $query0=mysqli_query($con,"UPDATE ades set clieck='$chec' where id=$ad_id") or die("Query fail: " . mysqli_error($con));
                            $message['code'] = "200";
							$message['message'] = "success";
							
		         }else
		         {
                    $chec=$query['clieck']-1;
                    $query0=mysqli_query($con,"UPDATE ades set clieck='$chec',status=4 where id=$ad_id") or die("Query fail: " . mysqli_error($con));
                      $query1 =  mysqli_query($con,"SELECT device_token ,device_type from `dealer` where  `id` = $query[dealer_id]  ") or mysqli_error ($con);
			            $query1=mysqli_fetch_assoc($query1);
			            

			             $device_token = $query1["device_token"];
						$devtype   = $query1["device_type"];
						$badge = '0';
						$title = "Trailer ad's ";
						$mymessage = "your ad title: ".$query['ad_title']." compleate";
						$req_status="4";
						$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
						$test=push_notification($device_token,$devtype,$mymessage,$title,$query['dealer_id'] ,$req_status,$badge,$dealertl);
						mysqli_query($con,"INSERT INTO  `notifications` (`to_dealer`,`noti_message`) VALUES('$query[dealer_id]','$mymessage')")or die(mysqli_error($con));
						
                        $message['code'] = "200";
						$message['message'] = "done success";
		         }
		        

			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	

/*=================================================
	 	add_dealer
================================================*/ 
function add_dealer()
{
  require('connectdb.php');
	extract($_POST);
	$check = checkaccess($accesstoken,$con);
	if($check){
		   $query2 =  mysqli_query($con,"SELECT `id` FROM `drivers` WHERE `contact` = '$contact'") or mysqli_error ($con);
		$query2=mysqli_num_rows($query2);
		if($query2){
			 $message['code'] = "202";
			$message['message'] = "this number already uses in driver side";

		}else{
				 $query1 =  mysqli_query($con,"SELECT `id` FROM `dealer` WHERE `contact` = '$contact'") or mysqli_error ($con);
				$query12=mysqli_num_rows($query1);
				if($query12>="1")
				{
					            $message['code'] = "201";
								$message['message'] = "this number already uses in Dealer side ";
					}
					else{
						 $img = "http://".$_SERVER["SERVER_NAME"]."/img/location/demy.jpg";
		   
						    if($_FILES["dealer_img"]["name"]!=""){
						        $rand_no1=rand(10000,99999);
						        $filename1 = $_FILES['dealer_img']['name'];
						        $ext1 = pathinfo($filename1, PATHINFO_EXTENSION);
						        $ins_img_name="del".$rand_no1.".".$ext1;
						        $img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;
						       move_uploaded_file($_FILES["dealer_img"]["tmp_name"],"../img/location/".$ins_img_name);
						    }
						     $location= '"'.$location.'"';

						$query2=mysqli_query($con,"INSERT INTO `dealer` set `contact` = '$contact',name='$name' ,status=2 ,location=$location, dealer_lat='$dealer_lat',dealer_long='$dealer_long',`image`='$img',driver_id='$driver_id'  ") or die("Query fail: " . mysqli_error($con));
												$message['code'] = "200";
												$message['message'] = "success";
												
					}
		 }
	}else{
		$message['code'] = "500";
		$message['message'] = "error";
		$message['data'] = "Token not found";
	}
	echo json_encode($message);
}



/*=================================================
	 	add_dealer
================================================*/ 
function add_driver_post()
{
  require('connectdb.php');
	extract($_POST);
	$check = checkaccess($accesstoken,$con);
	if($check)
	{
	$images=[];
	
	 if(!empty($location)){
	 	$location= '"'.$location.'"';
	 }
	
	    
		if (!empty($_FILES)) {
			 
			$query=mysqli_query($con,"INSERT INTO `driver_posts` set  `driver_id`='$driver_id', `title`='$title', `location`='$location', `status`='1' ") or die("Query fail: " . mysqli_error($con));
		    $dpid= mysqli_insert_id($con);
		
			 $countfiles = count($_FILES['file']['name']);
			 $i=0;
			 for($i=0;$i<$countfiles;$i++){
			  
			   $file_name=$_FILES["file"]["name"][$i];
					    $file_tmp=$_FILES["file"]["tmp_name"][$i];
					    $ext=pathinfo($file_name,PATHINFO_EXTENSION);
					    $rand_no1=rand(10000,99999);
						
					    $ins_img_name="P".$rand_no1.".".$ext;
					    $img= "http://".$_SERVER["SERVER_NAME"]."/img/location/".$ins_img_name;

					    move_uploaded_file($_FILES["file"]["tmp_name"][$i],"../img/location/".$ins_img_name);

					    $querya=mysqli_query($con,"INSERT INTO `driver_posts_file` set `driver_post_id`='$dpid', `file_path`='$img', `status`='1' ") or die("Query fail: " . mysqli_error($con));
					   
			    
			 }
			 if($i==0){
	         $message['code'] = "202";
		    $message['message'] = "file not uploaded";
			 }
			 else{
			 		$message['code'] = "200";
		    $message['message'] = "Seccess";
			 }
		
				
		
		
		   
    }
	else{

			$query=mysqli_query($con,"INSERT INTO `driver_posts` set  `driver_id`='$driver_id', `title`='$title', `location`='$location', `status`='1' ") or die("Query fail: " . mysqli_error($con));
			$message['code'] = "200";
			$message['message'] = "Seccess";
	}

	}else{
		$message['code'] = "500";
		$message['message'] = "error";
		$message['data'] = "Token not found";
	}
	echo json_encode($message);
}


/*=================================================
	 	add_dealer
================================================*/ 
function add_post_text()
{
  require('connectdb.php');
	extract($_POST);
	$check = checkaccess($accesstoken,$con);
	if($check)
	{ 
		
		if(!empty($location)){
	 	$location= '"'.$location.'"';
	 }
			$query=mysqli_query($con,"INSERT INTO `driver_posts` set  `driver_id`='$driver_id', `title`='$title', `location`='$location', `status`='1' ") or die("Query fail: " . mysqli_error($con));
			$message['code'] = "200";
			$message['message'] = "Seccess";
	}else{
		$message['code'] = "500";
		$message['message'] = "error";
		$message['data'] = "Token not found";
	}
	echo json_encode($message);
}



/*=================================================
	 	Get Post
================================================*/ 
function get_post()
{
  require('connectdb.php');
	extract($_POST);
	$check = checkaccess($accesstoken,$con);
	if($check)
	{


	    $query1=mysqli_query($con,"SELECT p.*,d.name,d.id as post_driver_id, d.image as driver_image FROM `driver_posts`as p LEFT JOIN drivers as d on d.id=p.driver_id ORDER BY `p`.`id` DESC ") or die("Query fail: " . mysqli_error($con));
	          
        	     $result=[];
			       while($getReq=mysqli_fetch_assoc($query1)){
			       	
			       	   	 $block=mysqli_query($con,"SELECT * FROM `block_driver` WHERE `driver_id`='$driver_id' and block_driver_id='$getReq[post_driver_id]' ") or die("Query fail: " . mysqli_error($con));
					      if(mysqli_num_rows($block)<=0)
					      {
					      
                              $files=[];
			         	      $query2 =  mysqli_query($con,"SELECT * FROM `driver_posts_file` WHERE driver_post_id=$getReq[id] ") or mysqli_error ($con);
			         	

					         while($que=mysqli_fetch_assoc($query2)){
					         	$da['file_path']=$que['file_path'];
					         	array_push($files, $da);
					         }
	                         $like_count =  mysqli_query($con,"SELECT COUNT(id) as total_like FROM `like_post` WHERE `post_id`=$getReq[id] and status=1 ") or mysqli_error ($con);
				             $like_coun=mysqli_fetch_assoc($like_count);

				             $commes_count =  mysqli_query($con,"SELECT COUNT(id) as total_com FROM `comment_post` WHERE `post_id`=$getReq[id] ") or mysqli_error ($con);
				             $comme_count=mysqli_fetch_assoc($commes_count);

	                         $query3 =  mysqli_query($con," SELECT status FROM `like_post` WHERE `post_id`=$getReq[id] ") or mysqli_error ($con);
	                          $comm=mysqli_fetch_assoc($query3);

	                         $getReq['comments']=$comme_count['total_com'];
	                         $getReq['likes']=$like_coun['total_like'];
	                         $getReq['like_status']=$comm['status'];

					         $getReq['files']=$files;
					         $getReq['created_at']= date('d-M-Y h:i', strtotime( $getReq['created_at'] ) ) ;
	                         array_push($result, $getReq);
					      }
					     
					      
				    }
			        
			        $message['code'] = "200";
					$message['message'] = "success";
					$message['data'] 	=$result;
            
	}else{
		$message['code'] = "500";
		$message['message'] = "error";
		$message['data'] = "Token not found";
	}
	echo json_encode($message);
}



/*=================================================
	 	Like unlike Post
================================================*/ 


	function like_post12(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT * from `like_post` WHERE `post_id`='$post_id' and `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
			
            if(mysqli_num_rows($query0)>=1)
            { 
            	$query1=mysqli_query($con,"UPDATE `like_post`set `status`='$status' WHERE  `post_id`='$post_id' and `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
		        
		         $like_count =  mysqli_query($con,"SELECT COUNT(id) as total_like FROM `like_post` WHERE `post_id`=$post_id and status=1 ") or mysqli_error ($con);
			             $like_coun=mysqli_fetch_assoc($like_count);

				 $message['code'] = "202";
						$message['message'] = "Try again";

            }
            else
            {
            	$query1=mysqli_query($con,"INSERT INTO `like_post`set `post_id`='$post_id', `driver_id`='$driver_id', `status`='$status' ") or die("Query fail: " . mysqli_error($con));
		         $like_count =  mysqli_query($con,"SELECT COUNT(id) as total_like FROM `like_post` WHERE `post_id`=$post_id and status=1 ") or mysqli_error ($con);
			             $like_coun=mysqli_fetch_assoc($like_count);
				 if($query1){
				 
	                            $message['code'] = "200";
								$message['message'] = "success";
								 $message['data']	= (object)[
										"status_codep"			=> $status,
										"total_like"			=> $like_coun['total_like']
									];

				}
				else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
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
	 	Like unlike Post
================================================*/ 


	function like_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT * from `like_post` WHERE `post_id`='$post_id' and `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
            if(mysqli_num_rows($query0)>=1)
            { 
            	$query1=mysqli_query($con,"UPDATE `like_post`set `status`='$status' WHERE  `post_id`='$post_id' and `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
		        
		         $like_count =  mysqli_query($con,"SELECT COUNT(id) as total_like FROM `like_post` WHERE `post_id`=$post_id and status=1 ") or mysqli_error ($con);
			             $like_coun=mysqli_fetch_assoc($like_count);

				if($query1){
					$querynot =  mysqli_query($con,"SELECT d.device_token,d.device_type,d.id FROM `driver_posts`as p LEFT JOIN drivers as d on d.id=p.driver_id where p.id='$post_id' ") or mysqli_error ($con);
			            $querynot=mysqli_fetch_assoc($querynot);

			            $driver_name =  mysqli_query($con,"SELECT name FROM `drivers` where id='$driver_id' ") or mysqli_error ($con);
			            $driver_name=mysqli_fetch_assoc($driver_name);
			             $device_token = $querynot["device_token"];
						$devtype   = $querynot["device_type"];
						$badge = '0';
						$title = "Trailer";
					    $mymessage = "Your post like by ".$driver_name['name'];
						$req_status="1";
						$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";
					 $ad=    push_notification($device_token,$devtype,$mymessage,$title,'1' ,$req_status,$badge,$dealertl);
					 mysqli_query($con,"INSERT INTO  `notifications` (`to_driver`,`noti_message`,post_id) VALUES('$querynot[id]','$mymessage','$post_id')")or die(mysqli_error($con));
					/* print_r($ad);
					 exit();*/
	                    $message['code'] = "200";
						$message['message'] = "success";
                        $message['data']	= (object)[
								"status_codep"			=> $status,
								"total_like"			=> $like_coun['total_like']
							];
				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}

            }
            else
            {
            	$query1=mysqli_query($con,"INSERT INTO `like_post`set `post_id`='$post_id', `driver_id`='$driver_id', `status`='$status' ") or die("Query fail: " . mysqli_error($con));
		         $like_count =  mysqli_query($con,"SELECT COUNT(id) as total_like FROM `like_post` WHERE `post_id`=$post_id and status=1 ") or mysqli_error ($con);
			             $like_coun=mysqli_fetch_assoc($like_count);
				 if($query1){
				 	$querynot =  mysqli_query($con,"SELECT d.device_token,d.device_type,d.id FROM `driver_posts`as p LEFT JOIN drivers as d on d.id=p.driver_id where p.id='$post_id' ") or mysqli_error ($con);
			            $querynot=mysqli_fetch_assoc($querynot);

			            $driver_name =  mysqli_query($con,"SELECT name FROM `drivers` where id='$driver_id' ") or mysqli_error ($con);
			            $driver_name=mysqli_fetch_assoc($driver_name);
			             $device_token = $querynot["device_token"];
						$devtype   = $querynot["device_type"];
						$badge = '0';
						$title = "Trailer";
					    $mymessage = "Your post like by ".$driver_name['name'];
						$req_status="1";
						$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";
						push_notification($device_token,$devtype,$mymessage,$title,'1' ,$req_status,$badge,$dealertl);
						 mysqli_query($con,"INSERT INTO  `notifications` (`to_driver`,`noti_message`) VALUES('$querynot[id]','$mymessage')")or die(mysqli_error($con));
	                            $message['code'] = "200";
								$message['message'] = "success";
								 $message['data']	= (object)[
										"status_codep"			=> $status,
										"total_like"			=> $like_coun['total_like']
									];

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
            }
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	


/*=================================================
	 	Like unlike Post
================================================*/ 


	function comment_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 
            	$query1=mysqli_query($con,"INSERT INTO `comment_post`set `post_id`='$post_id', `driver_id`='$driver_id', `status`='1',comment='$comment' ") or die("Query fail: " . mysqli_error($con));
		     $commes_count =  mysqli_query($con,"SELECT COUNT(id) as total_com FROM `comment_post` WHERE `post_id`=$post_id ") or mysqli_error ($con);
			   $comme_count=mysqli_fetch_assoc($commes_count);
				if($query1){

					  $querynot =  mysqli_query($con,"SELECT d.device_token,d.device_type,d.id FROM `driver_posts`as p LEFT JOIN drivers as d on d.id=p.driver_id where p.id='$post_id' ") or mysqli_error ($con);
			            $querynot=mysqli_fetch_assoc($querynot);

			            $driver_name =  mysqli_query($con,"SELECT name FROM `drivers` where id='$driver_id' ") or mysqli_error ($con);
			            $driver_name=mysqli_fetch_assoc($driver_name);
			             $device_token = $querynot["device_token"];
						$devtype   = $querynot["device_type"];
						$badge = '0';
						$title = "Trailer";
					    $mymessage = $driver_name['name']." commented on your post";

						$req_status="2";
						$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";
					  	 push_notification($device_token,$devtype,$mymessage,$title,'2' ,$req_status,$badge,$dealertl);
					  	  mysqli_query($con,"INSERT INTO  `notifications` (`to_driver`,`noti_message`,post_id) VALUES('$querynot[id]','$mymessage','$post_id')")or die(mysqli_error($con));

	                            $message['code'] = "200";
								$message['message'] = "success";
								 $message['data']	= (object)[
										"total_comment"			=> $comme_count['total_com']
									];


				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
            
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	

			/*=================================================
				 	Like unlike Post
			================================================*/ 


	function get_comment(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 
              $query1=mysqli_query($con,"SELECT c.*,d.name, d.image as driver_image FROM `comment_post`as c LEFT JOIN drivers as d on d.id=c.driver_id where c.`post_id`='$post_id' ORDER BY `c`.`id` DESC ") or die("Query fail: " . mysqli_error($con));
		      $result=[];
		          while($que=mysqli_fetch_assoc($query1)){
		          	$que['created_on']= date('d-M-Y h:i', strtotime( $que['created_on'] ) ) ;
				         	array_push($result, $que);
				         }
				
	                            $message['code'] = "200";
								$message['message'] = "success";
								$message['data'] = $result;
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	


    /*=================================================
	 	report_post
     ================================================*/ 


	function block_driver(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 
           $query0=mysqli_query($con,"SELECT * from `block_driver` WHERE `block_driver_id`='$block_driver_id' and `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
            if(mysqli_num_rows($query0)>=1)
            { 
            	$message['code'] = "202";
				$message['message'] = "its already block";
            }
            else
            {
            	$query1=mysqli_query($con,"INSERT INTO `block_driver`set `block_driver_id`='$block_driver_id', `driver_id`='$driver_id', `status`='1' ") or die("Query fail: " . mysqli_error($con));
		        
				 if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";

				}else{
	                    $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
            }
             
            
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	

	/*=================================================
	 	report_post
     ================================================*/ 


	function report_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 
            	$query1=mysqli_query($con,"INSERT INTO `report_post`set `post_id`='$post_id', `driver_id`='$driver_id', `status`='1',comment='$comment' ") or die("Query fail: " . mysqli_error($con));
		
				if($query1){
	                            $message['code'] = "200";
								$message['message'] = "success";
								

				}else{
	                      $message['code'] = "202";
						$message['message'] = "Try again";
								
				}
             
            
			
		}else{
			$message['code'] = "500";
			$message['message'] = "error";
			$message['data'] = "Token not found";
		}
		echo json_encode($message);
	}	

    /*=================================================
	 	delete Product
	=================================================*/

	function delete_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
             
			 $query1=mysqli_query($con,"DELETE FROM `driver_posts` WHERE id='$post_id' ") or die("Query fail: " . mysqli_error($con));
			 $query1=mysqli_query($con,"DELETE FROM `driver_posts_file` WHERE driver_post_id='$post_id' ") or die("Query fail: " . mysqli_error($con));
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
	 	delete Product
	=================================================*/

	function update_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		if($check){
             
			 $query1=mysqli_query($con,"UPDATE `driver_posts` set title='$title' WHERE id='$post_id' ") or die("Query fail: " . mysqli_error($con));
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


    function query_post(){
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);

		if($check){
			 $query0=mysqli_query($con,"SELECT * from `product_query` WHERE `driver_id`='$driver_id' and `product_id`='$product_id' ") or die("Query fail: " . mysqli_error($con));
            if(mysqli_num_rows($query0)>=1)
            { 
            	
                $message['code'] = "202";
				$message['message'] = "Your enquiry already has been sent !";
            }
            else
            {
            	$query1=mysqli_query($con,"INSERT INTO `product_query`set `product_id`='$product_id', `driver_id`='$driver_id' ") or die("Query fail: " . mysqli_error($con));
		         
	                            $message['code'] = "200";
								$message['message'] = "Your enquiry has been sent !";
            }
			
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

	function getNotifications(){  
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$result = [];
	
		if($check){
				$notif=mysqli_query($con,"SELECT * FROM `notifications` WHERE `to_driver` = '$driver_id' ORDER BY `id` DESC ") or die(mysqli_error($con));
			while($getReq=mysqli_fetch_assoc($notif)){
				$getReq['created_at']= date('d-M-Y h:i', strtotime( $getReq['created_at'] ) ) ;

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

	 /*===========================================================================
	 	Get all notifications
	============================================================================= */

	function cleare_Notifications(){  
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$result = [];
	
		if($check){
				$notif=mysqli_query($con,"DELETE FROM `notifications` WHERE `to_driver`='$driver_id'") or die(mysqli_error($con));
			
		
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

	function logs(){  
		require('connectdb.php');
		extract($_POST);
		$check = checkaccess($accesstoken,$con);
		$result = [];
	
		if($check){
				
   $save=$error_message." from ".$from." id ".$id;
// path of the log file where errors need to be logged 
$log_file = "./../logs/error_log.log"; 
  
// setting error logging to be active 
ini_set("log_errors", TRUE);  
  
// setting the logging file in php.ini 
ini_set('error_log', $log_file); 
  
// logging the error 
error_log($save); 
			
		
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
	 	Send Push Notification
	===================================================*/

	function push_notification($device_id,$devicetype,$mymessage,$title,$rid,$req_status,$ncount,$dealertl){
		// echo $device_id.' # '.$devicetype.' # '.$mymessage.' # '.$title.' # '.$rid.' # '.$req_status.' # '.$ncount;exit();
	    $url = 'https://fcm.googleapis.com/fcm/send';
	    $api_key = 'AAAAXX5vIZw:APA91bG59CkTjLTndK0C9eNkXbqFMrCRT6YurWTU-_uWxWlgGpL3TjA9Gtslg23TudRyWSEcXRhR6QaPTKD_BSeTJfRe3wJ8IbxbuPji-WEVCflhrZsQEhcpD7GHrHcKDUiJDS5t0zYp';
	    if($devicetype ==1){
	    	$fields = (object) [
	            "to" =>$device_id,
	             "notification" => (object) [
		           "body" 	    	=> $mymessage,
		            "title"			=> $title,
		            "click_action"	=> $dealertl
	             ],
	            "data" => (object) [
		            "post_id" 	=> $rid,
		            "body" 	    	=> $mymessage,
		            "title"			=> $title,
		            "vibrate"		=> 1,
		            "sound"			=> 1,
		            "requestStatus" => $req_status,
		            "badge"			=> $ncount
	            ]
	    	];
    	}else{
		    $fields = (object) [
	            "to" =>$device_id,
	            "notification" => (object) [
		           "body" 	    	=> $mymessage,
		           "title"			=> $title,
		           "click_action"	=> $dealertl
	             ],
	            "data" => (object) [
	            	"body" 	    	=> $mymessage,
		            "title"			=> $title,
		            "requestID" 	=> $rid,
		            "requestStatus" => $req_status,
		            "vibrate"		=> "default",
		            "sound"			=> "default",
		            "badge"			=>	$ncount
	            ]
	    	];
	    }	
	    $headers = array(
	        'Content-Type:application/json',
	        'Authorization:key='.$api_key
	    );              
	    $ch = curl_init();
	    curl_setopt($ch, CURLOPT_URL, $url);
	    curl_setopt($ch, CURLOPT_POST, true);
	    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
	    $result = curl_exec($ch);
	    if ($result === FALSE) {
	        die('FCM Send Error: ' . curl_error($ch));
	    }
	    curl_close($ch);
	    return $result;
	}

	
	// =====================================================================================
	// Get Dostance
	// =====================================================================================

	function getDistance( $lati1, $long1, $lati2, $long2 ) {  
		$lat1 = floatval($lati1);
		$lat2 = floatval($lati2);
		$lon1 = floatval($long1);
		$lon2 = floatval($long2);
		$theta = $lon1 - $lon2;
	    $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
	    $dist = acos($dist);
	    $dist = rad2deg($dist);
	    $miles = $dist * 60 * 1.1515;
	   // return $miles * 1.609344;  
	     return $miles;  
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



	
		
?>