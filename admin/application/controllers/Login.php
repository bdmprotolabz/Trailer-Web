<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
   
    public function __construct()
	{
	
	parent::__construct();
	
		$this->load->database();
	
         $this->load->library('session');
	
	if($this->session->userdata('admin'))
        {
            redirect('index');
        }

	}
	
	public function index()
	{
		$this->load->view('login');
	}


	public function  login(){
	     $name = $this->input->post('name'); 
	   $password = $this->input->post('password'); 
	 
	   $query = "SELECT * FROM `admin` WHERE username ='$name' and password='$password' " ;
	   $query = $this->db->query($query);

		if($query->num_rows() == 1){
		    
		   $this->session->set_userdata('admin','1');
		    $this->session->set_flashdata('success', 'Login Success');
		   redirect('index');
		}
		else{
			
			 $this->session->set_flashdata('error', 'Somthing went worng, Please check again!');
		    redirect('/');
		}
	}


}
