<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'login';
$route['login'] = 'login/login';
$route['index'] = 'welcome/index';
$route['logout'] = 'welcome/logout';
$route['dealer'] = 'welcome/dealer';
$route['driver'] = 'welcome/driver';
$route['add_dealer'] = 'welcome/add_dealer';
$route['add_driver'] = 'welcome/add_driver';
$route['do_upload'] = 'welcome/do_upload';
$route['aad_driver'] = 'welcome/aad_driver';
$route['membership'] = 'welcome/membership';
//$route['add_membership'] = 'welcome/add_membership';
$route['edit_membership'] = 'welcome/edit_membership';
$route['review'] = 'welcome/review';
$route['product'] = 'welcome/product';
$route['edit_product'] = 'welcome/edit_product';
$route['View_product'] = 'welcome/View_product';
$route['add_ad'] = 'welcome/view_add';
$route['view_ads'] = 'welcome/View_ads';
$route['verify_dealer'] = 'welcome/verify_dealer';
$route['approve_dealer'] = 'welcome/approve_dealer';
$route['reject_dealer'] = 'welcome/reject_dealer';
$route['View_ongoing_ads'] = 'welcome/View_ongoing_ads';
$route['edit_ads'] = 'welcome/edit_ads';
$route['Change_password'] = 'welcome/setting';
$route['report'] = 'welcome/report';
$route['driver_query'] = 'welcome/View_product_query';

$route['admin_ads'] = 'welcome/admin_ads';
$route['notification'] = 'welcome/notification';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
