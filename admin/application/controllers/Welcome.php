<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	 public function __construct()
	{
	//call CodeIgniter's default Constructor
	parent::__construct();
	
	
	$this->load->database();
	$this->load->model('Dmodel');
        $this->load->library('session');
	//load Model
if(!$this->session->userdata('admin'))
        {
            redirect('Login');
        }
    }
         
	public function index()
	{ 
      $date=date('Y-m-d');
             $weekdate=date('Y-m-d', strtotime("-7 days", strtotime($date)));
             $monthdate=date('Y-m-d', strtotime("-30 days", strtotime($date)));
             $yeardate=date('Y-m-d', strtotime("-1 year", strtotime($date)));   
            
      $sale0= $this->db->query("SELECT sum(m.price) as totel from dealer_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$weekdate' and '$date'")->result_array();
     $sale['weekly']=$sale0[0]['totel'];
      
       $sale1= $this->db->query("SELECT sum(m.price) as totel from dealer_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$monthdate' and '$date'")->result_array();
        $sale['monthdate']=$sale1[0]['totel'];
      // print_r($sale1);
      // exit();
        $sale2= $this->db->query("SELECT sum(m.price) as totel from dealer_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$yeardate' and '$date'")->result_array();
        $sale['yeardate']=$sale2[0]['totel'];

         $sale3= $this->db->query("SELECT sum(m.price) as totel from driver_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$weekdate' and '$date'")->result_array();
         $sale['driverweekly']=$sale3[0]['totel'];

       $sale4= $this->db->query("SELECT sum(m.price) as totel from driver_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$monthdate' and '$date'")->result_array();
       $sale['drivermonthdate']=$sale4[0]['totel'];

        $sale5= $this->db->query("SELECT sum(m.price) as totel from driver_membership as d LEFT JOIN membership as m on m.id=d.`membership_id` WHERE update_at BETWEEN '$yeardate' and '$date'")->result_array();
        $sale['driveryeardate']=$sale5[0]['totel'];

        $sale['ads_price']= $this->db->query("SELECT * FROM `ads_price` where id=1")->result();
  
     $ads= $this->db->query("SELECT sum(amount) as totel from ades WHERE status!=3 and created_at BETWEEN '$weekdate' and '$date'")->result_array();
   
     $sale['adsweekly']=$ads[0]['totel'];
      
       $ads1= $this->db->query("SELECT sum(amount) as totel from ades WHERE  status!=3 and created_at BETWEEN '$monthdate' and '$date'")->result_array();
        $sale['adsmonthdate']=$ads1[0]['totel'];
      // print_r($sale1);
      // exit();
        $ads2= $this->db->query("SELECT sum(amount) as totel from ades WHERE status!=3 and created_at BETWEEN '$yeardate' and '$date'")->result_array();
        $sale['adsyeardate']=$ads2[0]['totel'];

	$this->load->view('index',$sale);
	}

	public function update_price()
	{
		 $form_data = $this->input->post();
		  $id =$this->input->post('id');
        $query = $this->Dmodel->update('ads_price',$id,$form_data);
 
                    if($query)
	                  {
	                 
	                  	
                      $this->session->set_flashdata('success', 'Price Update Successfully');
                      redirect('/index');
                       }
	                 else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
                      redirect('/index');
	                  }
	}

   public function dealer()
   {
		 $data['status'] =1;
        $dealer['data_dealer'] = $this->Dmodel->get_all_record('dealer', $data);
       //print_r($dealer);

	    $this->load->view('dealer',$dealer);
	}
	public function driver()
	{
		 
        $dealer['data_driver']= $this->db->query("SELECT * FROM `drivers` WHERE status=1 ORDER BY `drivers`.`id` DESC")->result();
		//print_r($dealer);


		$this->load->view('driver',$dealer);
	}
	public function add_dealer()
	{
		$this->load->view('add_dealer');
	}
	public function product()
	{
		$this->load->view('product');
	}
	public function View_product()
	{
		
        $data['status'] =1;
        $dealer['mem'] = $this->Dmodel->get_all_record('admin_product', $data);
     
	    $this->load->view('view_product',$dealer);
	}
	public function edit_product()
	{
		$id=$_GET['data'];
		$queryu =  "SELECT * from admin_product where ID ='$id'";
	    $qu['data'] = $this->db->query($queryu)->result();
	    //print_r($qu);
	   $this->load->view('edit_product',$qu);
	}
	public function save_provuct()
	{

        $config['upload_path']="../img/location";
                 $config['allowed_types']='gif|jpg|png|jpeg';
                 $config['encrypt_name'] = TRUE;
                   $config['remove_spaces'] =  TRUE;
              
             
                  $this->load->library('upload',$config);
        
                if($this->upload->do_upload('userfile')) {
                  
                     $data = $this->upload->data();
                 
                      $form_dataa =  (base_url("../img/location/".$data['raw_name'].$data['file_ext']));
                  
			                $form_data = $this->input->post();
			                $form_data['image']=$form_dataa;
					 $form_data['status'] =1;
                        
			         $query = $this->Dmodel->record_insert('admin_product',$form_data);
		                  if($query)
		                  {

	                      $this->session->set_flashdata('success', 'Data Insert Successfully');
	                           redirect('/product');
		                  } else
		                  {
	                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
	                       redirect('/product');
	                      }

                 } 
                 else
                 {
                 	 $this->session->set_flashdata('success', 'Something wont wrong in  Image. Try Again!');
                     redirect('/product');
                     // echo $this->upload->display_errors();
                      
                 }

		/* $form_data = $this->input->post();
		 $form_data['status'] =1;*/
        
		       
	}
	public function update_provuct()
	{

		 $config['upload_path']="../img/location";
                 $config['allowed_types']='gif|jpg|png|jpeg';
                 $config['encrypt_name'] = TRUE;
                   $config['remove_spaces'] =  TRUE;
              
             
                  $this->load->library('upload',$config);
        
                if($this->upload->do_upload('userfile')) {
                  
                     $data = $this->upload->data();
                 
                      $form_dataa =  (base_url("../img/location/".$data['raw_name'].$data['file_ext']));
                  
			                $form_data = $this->input->post();
			                $form_data['image']=$form_dataa;
					 $form_data['status'] =1;
                        
			            $id =$this->input->post('id');
                        $query = $this->Dmodel->update('admin_product',$id,$form_data);
		                 if($query)
		                  {
		                 
		                  	
	                      $this->session->set_flashdata('success', 'Product Update Successfully');
	                      redirect('/View_product');
	                       }
		                 else
		                  {
		                  	
	                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
	                      redirect('/View_product');
		                  }

                 } 
                 else
                 {
                 	 
                    $id =$this->input->post('id');
					$queryu =  "SELECT image from admin_product where ID ='$id'";
	                $qu = $this->db->query($queryu)->result();
	                $form_data = $this->input->post();
			         $form_data['image']=$qu[0]->image;
                     $query = $this->Dmodel->update('admin_product',$id,$form_data);
		                 if($query)
		                  {
	                      $this->session->set_flashdata('success', 'Product Update Successfully');
	                      redirect('/View_product');
	                       }
		                   else
		                  {
 	                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
	                      redirect('/View_product');
		                  }
                      
                 }
		
	}
	public function add_driver()
	{
		$this->load->view('add_driver');
	}
    public function do_upload()
	{



		     $config['upload_path']="../img/location";
                 $config['allowed_types']='gif|jpg|png|jpeg';
                 $config['encrypt_name'] = TRUE;
                   $config['remove_spaces'] =  TRUE;
              
             
                  $this->load->library('upload',$config);
        
                if($this->upload->do_upload('userfile')) {
                  
                     $data = $this->upload->data();
                 
                     $deale['image']=  (base_url("../img/location/".$data['raw_name'].$data['file_ext']));
                  
                
                   $deale['status'] =1;
                   $deale['dealer_lat'] = $this->input->post('lat'); 
                   $deale['dealer_long'] = $this->input->post('long');
                   $deale['name'] = $this->input->post('name'); 
			       $deale['email'] = $this->input->post('email'); 
			       $countryCode= $this->input->post('countryCode'); 
			       $num= $this->input->post('number'); 
			       $deale['contact']=$countryCode.$num;
                    $query = $this->Dmodel->get_all_record('dealer',$deale);
                    if($query)
	                  {
	                      $query = $this->Dmodel->record_insert('dealer',$deale);
		                  if($query)
		                  {

	                      $this->session->set_flashdata('success', 'Data Insert Successfully');
	                           redirect('/add_dealer');
		                  } else
		                  {
	                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
	                       redirect('/add_dealer');
		                  }
	              }
	               else
		                  {
	                      $this->session->set_flashdata('success', 'This number alrady exists. Try Again!');
	                       redirect('/add_dealer');
		                  }
                 
                 } 
                 else
                 {
                     $this->session->set_flashdata('success', 'Please select Image formet. Try Again!');
	                       redirect('/add_dealer');
		                  
                      
                 }
		
	}

	public function aad_driver(){

		         $config['upload_path']="../img/location";
                 $config['allowed_types']='gif|jpg|png|jpeg';
                 $config['encrypt_name'] = TRUE;
                   $config['remove_spaces'] =  TRUE;
              
             
                  $this->load->library('upload',$config);
        
                if($this->upload->do_upload('userfile')) {
                  
                     $data = $this->upload->data();
                 
                      $driver['image']=  (base_url("../img/location/".$data['raw_name'].$data['file_ext']));
                  
                
                  
                 
                   
              
                     $driver['name'] = $this->input->post('name'); 
					 $driver['email'] = $this->input->post('email');  
                       $countryCode = $this->input->post('countryCode'); 
					 $con=$this->input->post('number'); 
					 $driver['contact'] =$countryCode.$con;
					 /*$driver['trailer_year'] = $this->input->post('trailer_year'); 
					 $driver['part_no'] = $this->input->post('part');
					 $driver['product_name'] = $this->input->post('Product_name');  
					 $driver['description'] = $this->input->post('Description');
					 $driver['wheel_stud'] = $this->input->post('Wheel'); 
					 $driver['hub_diameter'] = $this->input->post('Hub'); 
					 $driver['brake_actuation'] = $this->input->post('Brake'); 
					 $driver['brack_type'] = $this->input->post('Brake_typ');
					 $driver['ez_labe'] = $this->input->post('lube'); 
					 $driver['axle_weight_capacity'] = $this->input->post('Axle_Weight'); 
					 $driver['axle_manufacturer'] = $this->input->post('Manufacturer'); 
					 $driver['traler_menufacter'] = $this->input->post('traler_menufacter'); */
					 $driver['status'] =1;
                            
			         $query = $this->Dmodel->record_insert('drivers',$driver);
	                  if($query)
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Data Insert Successfully');
                      redirect('/add_driver');
	                  } else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
                      redirect('/add_driver');
	                  }

                 } 
                 else
                 {
                 	 $this->session->set_flashdata('success', 'Image wont wrong. Try Again!');
                      redirect('/add_driver');
                      echo $this->upload->display_errors();
                      
                 }
       
	}
    public function delete()
	{
		 $id=$_GET['data'];
		 $table =$_GET['table'];
		 $data['status'] =0;
		 $query = $this->Dmodel->delete($table,$id,$data);
		  $this->session->set_flashdata('success', 'Delete Successfully');
		 redirect($_SERVER['HTTP_REFERER']);
	}
	public function edit_driver()
	 {
		 $id=$_GET['data'];
		$queryu =  "SELECT * from drivers where ID ='$id'";
	    $qu['data'] = $this->db->query($queryu)->result();
	    $this->load->view('edit_driver',$qu);
		
	 }
	public function update_driver()
	{

		             $id =$this->input->post('id');
		             $driver['name'] = $this->input->post('name'); 
					 $driver['email'] = $this->input->post('email'); 
					 $driver['contact'] = $this->input->post('number'); 
					 

				     $driver['trailer_year'] = $this->input->post('trailer_year'); 
					 $driver['part_no'] = $this->input->post('part');
					 $driver['product_name'] = $this->input->post('Product_name');  
					 $driver['description'] = $this->input->post('Description');

					 $driver['wheel_stud'] = $this->input->post('Wheel'); 
					 $driver['hub_diameter'] = $this->input->post('Hub'); 
					 $driver['brake_actuation'] = $this->input->post('Brake'); 

					 $driver['brack_type'] = $this->input->post('Brake_typ');

					 $driver['ez_labe'] = $this->input->post('lube'); 
					 $driver['axle_weight_capacity'] = $this->input->post('Axle_Weight'); 
					 $driver['axle_manufacturer'] = $this->input->post('Manufacturer'); 
					 $driver['traler_menufacter'] = $this->input->post('traler_menufacter'); 
					 $driver['status'] =1;

					
			          $query = $this->Dmodel->update('drivers',$id,$driver);
 
                    if($query)
	                  {
	                 
	                  	
                      $this->session->set_flashdata('success', 'Driver Update Successfully');
                      redirect('/driver');
                       }
	                 else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
                      redirect('/driver');
	                  }
		
	}
 public function membership()
	{
		
       // $data['status'] =1;
        $dealer['mem'] = $this->Dmodel->get_data('membership');
     
	    $this->load->view('view_membership',$dealer);
	}
	public function  add_membership()
	{

	    $this->load->view('membership');
	}


	public function  aadd_membership()
	{
         $driver['type'] = $this->input->post('type'); 
		 $driver['price'] = $this->input->post('Prices'); 
		  $driver['status'] =1;
		  $query = $this->Dmodel->record_insert('membership',$driver);
	                  if($query)
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Data Insert Successfully');
                      redirect('/membership');
	                  } else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
                      redirect('/membership');
	                  }

	}
	public function edit_membership()
	{
		$id=$_GET['data'];
		$queryu =  "SELECT * from membership where id ='$id'";
	    $qu['data'] = $this->db->query($queryu)->result();
       $this->load->view('edit_membership',$qu);
	}
    public function  update_membership()
	{
		$id=$this->input->post('id'); 
        // $driver['type'] = $this->input->post('type'); 
		 $driver['price'] = $this->input->post('Prices'); 
		  $driver['status'] =$this->input->post('status');
		 $query = $this->Dmodel->update('membership',$id,$driver);
	                  if($query)
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Data Insert Successfully');
                      redirect('/membership');
	                  } else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
                      redirect('/membership');
	                  }

	    
	}

	function review(){
		
			  $data['review']= $this->db->query("SELECT r.review,r.create_at,r.id as rid,dealer.name as dealer_name,driver.name as driver_name,dealer.id,driver.id FROM `review_dealer` as r LEFT join dealer as dealer on dealer.id=r.dealer_id LEFT JOIN drivers as driver on driver.id=r.driver_id")->result();

			        
			     ;


				    $this->load->view('review',$data);

	}
	function edit_dealer()
	{
			$id=$_GET['data'];
		$queryu =  "SELECT * from dealer where id ='$id'";
	    $qu['data'] = $this->db->query($queryu)->result();

			$this->load->view('edit_dealer',$qu);
	}
	function update_dealer()
	{
	       $id=$this->input->post('id'); 
	       $name = $this->input->post('name'); 
	       $email = $this->input->post('email'); 
	      

	        $query = $this->db->query("UPDATE `dealer` SET name='$name',email='$email' where id=$id ");
              if($query!=null)
              {
              	
              $this->session->set_flashdata('success', 'Data Insert Successfully');
              redirect('/dealer');
              } else
              {
              	
              $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
              redirect('/dealer');
              }
	}

    public function setting()
	{
		 $this->load->view('statting');
	}
		
    public function update_pass()
	{
			      $opassword = $this->input->post('opass'); 
			      $password = $this->input->post('npass');

			      $query = $this->db->query("SELECT * from `admin` where password='$opassword' ")->result();
			      
	                  if($query!=null)
	                  {
	                  	 $query = $this->db->query("UPDATE `admin` set  password='$password' where password='$opassword' ");
                      $this->session->set_flashdata('success', 'Password Updated Successfully');
                      redirect('welcome/setting');
	                  } else
	                  {
	                  	
                      $this->session->set_flashdata('success', 'Old Password Incorrect');
                     
                     redirect('welcome/setting');
	                  }  
			     
	}
	public function view_add()
	{
/* 
       $data['status'] =1;
        $dealer['data_dealer'] = $this->Dmodel->get_all_record('dealer', $data);*/
		$this->load->view('add_add');
	}
	public function save_add()
	{
 
		     $config['upload_path']="../img/location";
                 $config['allowed_types']='gif|jpg|png|jpeg';
                 $config['encrypt_name'] = TRUE;
                   $config['remove_spaces'] =  TRUE;
              
             
                  $this->load->library('upload',$config);
        
                if($this->upload->do_upload('userfile')) {
                  
                     $data = $this->upload->data();
                     $deale = $this->input->post(); 
               $deale['image']=  (base_url("../img/location/".$data['raw_name'].$data['file_ext']));
                  
                
                  $deale['status'] =2;
                   $deale['from_admin'] =1;
                
			         $this->db->distinct();
			        $this->db->select('ades.ad_title');
			        $this->db->from('ades');
			        $this->db->where('ad_title', $deale['ad_title']);
			        $this->db->where('from_admin', $deale['from_admin']);
			        $query = $this->db->get();
			     
                    if($query->num_rows()==0 )
	                  {
	                      $query = $this->Dmodel->record_insert('ades',$deale);
		                  if($query)
		                  {

	                      $this->session->set_flashdata('success', 'ad Insert Successfully');
	                           redirect('/admin_ads');
		                  } else
		                  {
	                      $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
	                       redirect('/add_ad');
		                  }
	              }
	               else
		                  {
	                      $this->session->set_flashdata('success', 'This ad title alrady exists. Try Again!');
	                       redirect('/add_ad');
		                  }
                 
                 } 
                 else
                 {
                       $this->session->set_flashdata('success', 'Pleas select Image formet. Try Again!');
	                       redirect('/add_ad');
		                  
                      
                 }
		
	}
	public function View_ads()
	{
		
        $dealer['mem']= $this->db->query("SELECT a.*,d.name as dealer_name FROM `ades` as a INNER join dealer as d on d.id=a.dealer_id where a.status=1 ORDER BY `a`.`id` DESC")->result();
     
	    $this->load->view('view_ads',$dealer);
	}
	public function edit_ads()
	{
		$id=$_GET['data'];
		
	   $query = $this->db->query("UPDATE `ades` SET status=2 where id=$id ");
          if($query!=null)
          {
             $sale0= $this->db->query("SELECT d.device_token ,d.device_type,d.id as dealer_id FROM `ades` as a LEFT JOIN dealer as d on d.id=a.dealer_id  WHERE a.id=$id ")->result();
		 $device_token = $sale0[0]->device_token; 
						$devtype   = $sale0[0]->device_type; 
						$badge = '0';
						$title = "Trailer";
						$mymessage = "Your Ad Approved by admin";
						$req_status="5";
						$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
						$this->push_notification($device_token,$devtype,$mymessage,$title,$sale0[0]->dealer_id ,$req_status,$badge,$dealertl);
						
                       $noti['to_dealer']=$sale0[0]->dealer_id;
						$noti['noti_message']=$mymessage;
					    $this->Dmodel->record_insert('notifications',$noti);
          	
          $this->session->set_flashdata('success', 'Adss Approved Successfully');
          redirect('/view_ads');
          } else
          {
          	
          $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
          redirect('/view_ads');
          }

	
	}
	function update_ads()
	{
	  $id=$_GET['data'];
	  $sale0= $this->db->query("SELECT card.*,d.device_token ,d.device_type,d.id as dealer_id FROM `ades` as a LEFT JOIN card_details as card on card.Transaction_id=a.trajection_id  LEFT JOIN dealer as d on d.id=a.dealer_id  WHERE a.id=$id ")->result();
   
       $da= $this->refundTransaction($sale0[0]->amount,$sale0[0]->cardnumber,$sale0[0]->carde_date,$sale0[0]->Transaction_id);
		
	   $query = $this->db->query("UPDATE `ades` SET status=3 where id=$id ");
          if($query!=null)
          {
          
     
		 $device_token = $sale0[0]->device_token; 
						$devtype   = $sale0[0]->device_type; 
						$badge = '0';
						$title = "Trailer";
						$mymessage = "Your Ad Reject by admin";
						$req_status="5";
						$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
						$this->push_notification($device_token,$devtype,$mymessage,$title,$sale0[0]->dealer_id ,$req_status,$badge,$dealertl);
						
                       $noti['to_dealer']=$sale0[0]->dealer_id;
						$noti['noti_message']=$mymessage;
					    $this->Dmodel->record_insert('notifications',$noti);
          	
          $this->session->set_flashdata('success', 'Adss Reject Successfully');

          redirect('/view_ads');
          } else
          {
          	
          $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
          redirect('/view_ads');
          }

	}
	public function View_ongoing_ads()
	{
		
        ///$data['status'] =2;
        //$dealer['mem'] = $this->Dmodel->get_all_record('ades', $data);
        $dealer['mem']= $this->db->query("SELECT a.*,d.name as dealer_name FROM `ades` as a INNER join dealer as d on d.id=a.dealer_id where a.status=2")->result();
     
	    $this->load->view('view_ongoing_ads',$dealer);
	}

	public function admin_ads()
	{
		
        ///$data['status'] =2;
        //$dealer['mem'] = $this->Dmodel->get_all_record('ades', $data);
        $dealer['mem']= $this->db->query("SELECT * FROM `ades` where from_admin=1")->result();
     
	    $this->load->view('admin_ad',$dealer);
	}

	public function verify_dealer()
	{
		
        $dealer['mem']= $this->db->query("SELECT dealer.*,d.name as driver_name FROM `dealer` as dealer INNER join drivers as d on d.id=dealer.driver_id where dealer.status=2 ORDER BY `dealer`.`id` DESC")->result();
      
	    $this->load->view('verify_dealer',$dealer);
	}
	public function approve_dealer()
	{
		$id=$_GET['data'];

		$queryu =  "SELECT driver_id from dealer where id ='$id'";
	    $qu = $this->db->query($queryu)->result();
		$did=$qu[0]->driver_id;

		 
		 $quer1 =  " SELECT device_token ,device_type,id from `drivers` where  `id`='$did' ";
	    $daar = $this->db->query($quer1)->result();
     
		 $device_token = $daar[0]->device_token; 
						$devtype   = $daar[0]->device_type; 
						$badge = '0';
						$title = "Trailer";
						$mymessage = "Your Dealer is Approved by admin";
						$req_status="5";
						$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";
						$this->push_notification($device_token,$devtype,$mymessage,$title,$daar[0]->id ,$req_status,$badge,$dealertl);
						
                       $noti['to_driver']=$did;
						$noti['noti_message']=$mymessage;
					    $this->Dmodel->record_insert('notifications',$noti);
		
	   $query = $this->db->query("UPDATE `dealer` SET status=1 where id=$id ");
          if($query!=null)
          {
          	
          $this->session->set_flashdata('success', 'Dealer Approved Successfully');
          redirect('/verify_dealer');
          } else
          {
          	
          $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
          redirect('/verify_dealer');
          }

	
	}
	function reject_dealer()
	{
	  $id=$_GET['data'];
		
	   $query = $this->db->query("UPDATE `dealer` SET status=1 where id=$id ");
          if($query!=null)
          {
          	
          	$queryu =  "SELECT driver_id from dealer where id ='$id'";
	        $qu = $this->db->query($queryu)->result();

		    $did=$qu[0]->driver_id;

			$quer1 =  " SELECT device_token ,device_type,id from `drivers` where  `id`='$did' ";
		    $daar = $this->db->query($quer1)->result();
	     
			$device_token = $daar[0]->device_token; 
			$devtype   = $daar[0]->device_type; 
			$badge = '0';
			$title = "Trailer";
			$mymessage = "Your Dealer is Reject by admin";
			$req_status="6";
			$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";
			$this->push_notification($device_token,$devtype,$mymessage,$title,$daar[0]->id ,$req_status,$badge,$dealertl);
			          $noti['to_driver']=$did;
						$noti['noti_message']=$mymessage;
					    $this->Dmodel->record_insert('notifications',$noti);
						

          $this->session->set_flashdata('success', 'Dealer Reject Successfully');
          redirect('/verify_dealer');
          } else
          {
          	
          $this->session->set_flashdata('success', 'Something wont wrong. Try Again!');
          redirect('/verify_dealer');
          }

	}

	function report(){
		$dealer['data_driver']= $this->db->query("SELECT p.*,c.comment as comment,c.id as rep_id,d.name FROM `report_post`as c LEFT JOIN drivers as d on d.id=c.driver_id LEFT JOIN driver_posts as p on p.id=c.post_id ORDER BY `c`.`id` DESC ")->result();
		//print_r($dealer);


		$this->load->view('view_reports',$dealer);
	}
	public function View_product_query()
	{
		
        $dealer['mem']= $this->db->query("SELECT p.product_name,p.img,d.name as driver_name,dl.name,dl.contact as dealer_con,d.contact,q.create_at  FROM `product_query` as q LEFT join product as p on p.id=q.product_id LEFT join drivers as d on d.id=q.driver_id 	LEFT join dealer as dl on p.dealer_id=dl.id ORDER BY `q`.`create_at` DESC")->result();
     //print_r($dealer);
	    $this->load->view('query_product',$dealer);
	}

	public function report_post()
	{
		 $id=$_GET['data'];
		 $queryu =  "SELECT post_id from report_post where id ='$id'";
	    $qu = $this->db->query($queryu)->result();
		
		//print_r($qu[0]->post_id);

		 $query = $this->Dmodel->delete('report_post',$id,'asf');
		 $query = $this->Dmodel->delete('driver_posts',$qu[0]->post_id,'asf');
		  $this->session->set_flashdata('success', 'Delete Successfully');
		 redirect($_SERVER['HTTP_REFERER']);
	}
	public function push_notification($device_id,$devicetype,$mymessage,$title,$rid,$req_status,$ncount,$dealertl){
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
		            "requestID" 	=> $rid,
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

	function refundTransaction($amount,$card_number,$date,$Transaction_id)
    { 
    	
 $url = "http://".$_SERVER["SERVER_NAME"]."/API/driver.php/refundTransaction";
	  $fields = (object) [
	            
	            	"amount" 	    	=> $amount,
		            "card_number"			=> $card_number,
		            "date" 	=> $date,
		            "Transaction_id" => $Transaction_id
	    	];
	                 
	    $ch = curl_init();
	    curl_setopt($ch, CURLOPT_URL, $url);
	    curl_setopt($ch, CURLOPT_POST, true);
	   
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	    curl_setopt($ch, CURLOPT_POSTFIELDS,$fields);
	    $result = curl_exec($ch);
	    if ($result === FALSE) {
	        die('FCM Send Error: ' . curl_error($ch));
	    }
	    curl_close($ch);
	    return $result;

	  
  }
  

	public function logout()
	{
		$this->session->unset_userdata('admin');
        redirect('/');
	}
	public function notification()
	{
		 
        $dealer['admin_noti']= $this->db->query("SELECT * FROM `admin_noti` WHERE status=1 ORDER BY `admin_noti`.`id` DESC")->result();
		//print_r($dealer);


		$this->load->view('notification',$dealer);
	}
	public function  puch_n()
	{
		$driver = $this->input->post(); 
        $driver['status']=1;
		  
			if($driver['to']=='Drivers')
			{
			  	$drivers= $this->db->query("SELECT device_token,device_type,id FROM `drivers` WHERE status=1 and device_token!='' ORDER BY `drivers`.`id` DESC")->result();
			  	$to="to_driver";
			  	$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";

			}
			else
			{
			  	$drivers= $this->db->query("SELECT device_token,device_type,id FROM `dealer` WHERE status=1 and device_token!='' ORDER BY `dealer`.`id` ASC")->result();
			  	$to="to_dealer";
			  	$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
			}
		
			    foreach ($drivers as $row) {
			    	/*echo $row->device_token;
			    	echo "<br>";*/
			    	  $device_token = $row->device_token; 
					$devtype   = $row->device_type; 
					$badge = '0';
					$title = $driver['title'];
					$mymessage = $driver['Description'];
					$req_status="9";
					$this->push_notification($device_token,$devtype,$mymessage,$title,$row->id ,$req_status,$badge,$dealertl);
		            $noti[$to]=$row->id;
					$noti['noti_message']=$mymessage;
				    $this->Dmodel->record_insert('notifications',$noti);
			    }
        $query = $this->Dmodel->record_insert('admin_noti',$driver);
        $this->session->set_flashdata('success', 'Notifications Push Successfully');
        redirect('/notification');
	}

	function push_again()
	{
			$id=$_GET['data'];
		$queryu =  "SELECT * from admin_noti where id ='$id'";
	    $qu = $this->db->query($queryu)->result();

       
         if($qu[0]->to=='Drivers')
			{
			  	$drivers= $this->db->query("SELECT device_token,device_type,id FROM `drivers` WHERE status=1 and device_token!='' ORDER BY `drivers`.`id` DESC")->result();
			  	$to="to_driver";
			  	$dealertl="com.e.thetrailerdriver.fcmwiththeappserver_TARGET_NOTIFICATION";

			}
			else
			{
			  	$drivers= $this->db->query("SELECT device_token,device_type,id FROM `dealer` WHERE status=1 and device_token!='' ORDER BY `dealer`.`id` ASC")->result();
			  	$to="to_dealer";
			  	$dealertl="com.e.thetrailerdelaler.fcmwiththeappserver_TARGET_NOTIFICATION";
			}
		
			    foreach ($drivers as $row) {
			    	/*echo $row->device_token;
			    	echo "<br>";*/
			    	  $device_token = $row->device_token; 
					$devtype   = $row->device_type; 
					$badge = '0';
					$title = $qu[0]->title;
					$mymessage = $qu[0]->Description;
					$req_status="9";
					$this->push_notification($device_token,$devtype,$mymessage,$title,$row->id ,$req_status,$badge,$dealertl);
		            $noti[$to]=$row->id;
					$noti['noti_message']=$mymessage;
				    $this->Dmodel->record_insert('notifications',$noti);
			    }
       // $query = $this->Dmodel->record_insert('admin_noti',$driver);
        $this->session->set_flashdata('success', 'Notifications Push again Successfully');
        redirect('/notification');
	}

}
