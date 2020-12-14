<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
require_once   'vendor-old/autoload.php';
use Twilio\Rest\Client;

class Dealers extends Controller {

    function index(Request $request){
       $request->session()->put('url','http://phpstack-102119-1169738.cloudwaysapps.com/' );
    	$id = $request->session()->get('admin');
      $result1 = array();
                  $res=DB::SELECT("SELECT d.name,d.image,d.id as driver_id,r.location_id,a.location from drivers as d INNER JOIN review_dealer as r on r.driver_id=d.id INNER JOIN add_location as a on a.id=r.location_id WHERE r.dealer_id='$id' GROUP by r.location_id");

                  foreach ($res as $getReq) {
                   $result =DB::SELECT("SELECT COUNT(id) as totel from review_dealer WHERE dealer_id='$id' and driver_id='$getReq->driver_id' and location_id='$getReq->location_id'");
                  // print_r($result[0]->totel);
                  // echo "<br>";
                  // exit();
                                                $data['image']=$getReq->image;
                  					         	 $data['name']=$getReq->name;
                  					         	 $data['review']=$result[0]->totel;
                  					         	 $data['location']=$getReq->location;
                  								array_push($result1, $data);

                  }

                  $user = DB::table('dealer')
                     ->where('id',$id)
                     ->first();
    return view('/admin/dashboard2',compact('result1','user'));
    }
    public function membership() {

        $result1 = DB::table('membership')->get();
       return view('/admin/memberships');
    }
    public function mylocation() {

       
       return view('/admin/mylocation');
    }
     public function profile(Request $request) {

      $id = $request->session()->get('admin');
       $data=DB::table('dealer')
               ->where('id',$id)
               ->first();
                $result =DB::SELECT("SELECT COUNT(id) as totel_revi from review_dealer where dealer_id='$id'"); 
                
       return view('/admin/profile',compact('data','result'));
    }
    public function update(Request $request) {
  

        $data['id'] = $request->input('dealerID');
        $data['name'] = $request->input('name');
       $data['lastname'] = $request->input('lastname');
        $data['email'] = $request->input('email');
         $result=  DB::table('dealer')
                 ->where('id', '=', $data['id'] )
                 ->update($data);
          if($result){
              return redirect()->back()->with('status', "Updated Successfully!");
           }
           else {
               return redirect()->back();
          }
 
    }

   public function sub(Request $request) {
  

        $data['id'] = $request->input('dealerID');
        $data['name'] = $request->input('name');
        $data['lastname'] = $request->input('lastname');
        $data['email'] = $request->input('email');
        

       $result=  DB::table('dealer')
               ->where('id', '=', $data['id'] )
               ->update($data);
        if($result){
            return redirect()->back()->with('status', "Updated Successfully!");
        }
        else {
             return redirect()->back();
        }
   
    }

    public function view_product(Request $request) {
      $id = $request->session()->get('admin');
     
                  $data=DB::SELECT("SELECT * FROM `product` WHERE dealer_id='$id' ORDER BY `product`.`id` DESC");

    // print_r($res);

       return view('/admin/view_product',compact('data'));
    }
    
    public function delete(Request $request) {
         $id = $request->route('id'); 
          echo $id;

          $result=  DB::delete("DELETE FROM `product` WHERE id='$id'");
         
           return redirect()->back();
         
         
     }
public function logout(Request $request) {
        $request->session()->forget('dealer');
        return redirect('/');
    }


}