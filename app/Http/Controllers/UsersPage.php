<?php
#
namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use App\Register;
use Illuminate\Support\Str;
use Carbon\Carbon;



class UsersPage extends Controller
{

    public function register(Request $request)
    {

         if ($request->password==$request->confirmpassword)
         {
            if (Str::contains($request->email ,'.com')&&Str::contains($request->email ,'@'))
            {
                 if (strlen($request->phone)==11)   
                 {
                    $data_mail=Register::where('mail',$request->email)->first();
                    
                    if(!$data_mail)
                    {
                        $data_phone=Register::where('phone',$request->phone)->first();

                        if(!$data_phone)
                        {
                             $second = Carbon::now();
                            $account = new Register;
                            $account->name=$request->name;
                            $account->mail=$request->email;
                            $account->phone=$request->phone;
                            $account->long=$request->long;
                            $account->lat=$request->lat;
                            $account->password=$request->password;  
                            $token= md5($request->phone*$second->second*$request->password);
                            $account->token=$token;
                            
                           if( $account->save())
                           {
                             $response=response()->json(['user'=>$account,'stat'=>200 , 'msg'=>"success"]);
                           }


                        }   
                        else
                        {
                             $response=response()->json(['stat'=>301, 'msg'=>"repeated phone"]);
                        }                      
                    }
                    else
                    {
                        $response=response()->json(['stat'=>302 , 'msg'=>"repeated email"]);

                    }
                 }
                 else
                 {
                    $response=response()->json(['stat'=>402 , 'msg'=>"wrong phone"]); 
                 }

            }
            else
            {
                $response=response()->json(['stat'=>401 , 'msg'=>"wrong email"]); 
            }

         }
         else
         {
            $response=response()->json(['stat'=>400 , 'msg'=>"wrong password"]); 
         }
    
       return($response);


        
    }


public function login(Request $req)
{

  $data= Register::where([
        ['password',$req->password],
        ['phone',$req->name]
        ])->orWhere([
        ['password',$req->password],
        ['mail',$req->name]
        ])->first();

  if($data)
  {
      $second = Carbon::now();
       $token= md5($data->phone*$second->second*$data->id*$data->password);
    DB::table('registers')
            ->where('id', $data->id)
            ->update(['token' => $token]);
            $data->token=$token;
    $response=response()->json(['user'=>$data,'stat'=>200 , 'msg'=>"success"]);
  }


else{
    $response=response()->json(['stat'=>304 , 'msg'=>"empty data"]); //wrong (mail or phone) or password
}


return ($response);
}
}


