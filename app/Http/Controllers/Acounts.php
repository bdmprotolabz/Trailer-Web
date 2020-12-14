<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
require_once   'vendor-old/autoload.php';
use Twilio\Rest\Client;

class Acounts extends Controller {

    public function num(Request $request) {
       $cod = $request->input('countryCode');
        $nu = $request->input('number');
        $num=$cod.$nu;


        
        
        $result = DB::table('dealer')
                 ->where('contact',$num)
                 ->first();

        
        if($result){
           try{
                $otp = rand(1000,9999);
                                        $sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                                       $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                                       $client = new Client($sid, $token);
                                     $as=   $client->messages->create($num, array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));
                                        $id = DB::table('dealer')
                                                ->where('contact', $num)
                                                ->update(['otp' => $otp]);
                                         $result = DB::table('dealer')
                                                   ->where('contact',$num)
                                                   ->first();
                                         $request->session()->put('admin',$result->id );
                                           return redirect('/verify');
               }
             catch(Exception $e)
             {
                      return redirect()->back()->with('status', "Please Enter correct number!");
              }
       
         }
         else{

          return redirect()->back()->with('status', "Please Register Now!");
            
         }



 
       
    }
     public function register_view() {

         return view('/register');

     }


     public function register(Request $request) {
        $dealer['name'] = $request->input('name');
        $dealer['l_name'] = $request->input('lname');
        $dealer['email'] = $request->input('email');
        $dealer['dealer_lat'] = $request->input('lat');
        $dealer['dealer_long'] = $request->input('long');
        $dealer['location'] = $request->input('location');
        $co = $request->input('countryCode');
         $nm = $request->input('number');
        $dealer['contact'] =$co.$nm;
        
       
         $this->validate($request, [
            'image' => 'required|image|mimes:jpeg,png,jpg,gif',
        ]);
         $image = $request->file('image');

     
       $new_name = rand() . '.' . $image->getClientOriginalExtension();
    
                   $image->move(public_path('/img/location/'), $new_name);
           $dealer['image']="http://".$_SERVER["SERVER_NAME"]."/public/img/location/".$new_name;
          //print_r($dealer);
          $titles = DB::table('drivers')->where('contact',$dealer['contact'])->first();
          $titles2 = DB::table('dealer')->where('contact',$dealer['contact'])->first();
          
          if($titles || $titles2){
          return redirect()->back()->with('status', "This Number alrady Exists! Pleser Enter other Number");
          }
          else
          {
               try{
                   

                      $otp = rand(1000,9999);
                   
                                              $sid = 'AC7499922fac2fb66b2ad296f187d5c0fd';
                                             $token = '137aa5eb3d9e60e0f26b81c6454de304'; 
                                             $client = new Client($sid, $token);
                                              $client->messages->create($dealer['contact'], array('from' => '+18325699893','body' => 'Your Trailer verification code is:'.$otp ));
                                              $dealer['otp'] = $otp ;
                                            DB::table('dealer')->insert($dealer);
                                               $result = DB::table('dealer')
                                                       ->where('contact',$dealer['contact'])
                                                       ->first();
                                            $id=  $request->session()->put('admin',$result->id );
                                         //  $id = $request->session()->get('admin');
        // exit();
                                           return redirect('/verify');
                     }
                   catch(Exception $e)
                   {
                     //echo 'hello2';exit();
                      return redirect()->back()->with('status', "Please Enter correct number!");
                           
                            //print_r($e);

                    }
          }
       
 
       
    }

    public function otp_verify(Request $request) {
        $otp = $request->input('otp');
          $id = $request->session()->get('admin');
       

            $result1 = DB::table('dealer')
                 ->where('id',$id)
                 ->where('otp',$otp)
                 ->first();
                 if($result1)
                 {
                  DB::table('dealer')->where('id',$id)->update(['status' => 1]);
                          
                           
                 $request->session()->put('dealer',$result1);
                 

                 //return redirect('/Dashboard',compact('result1'));
               return redirect('/Dashboard');
                 }
                 else
                 {
                //echo "Enter Correct Otp!";
               return redirect()->back()->with('status', "Enter Incorrect Otp! Please try again!");
                 }

    }

    

}
