<?php
require  '../vendor-old/autoload.php';
	use Twilio\Rest\Client;

$sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
 $token = '137aa5eb3d9e60e0f26b81c6454de304';
 $client = new Client($sid, $token);
 $client->messages->create('+919464078441', array('from' => '+18325699893','body' => 'welcome jaspreet singh you are lucky. you wine 100000000 rup please call this number :+917508983302' ));
								 	//1