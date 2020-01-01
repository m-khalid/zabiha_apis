<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests;
use App\Register;
use App\Complain;

class ComplainPage extends Controller
{
	public function complains(Request $request)
	{
		
     $data_mail=Register::where('mail',$request->name)->first();
     $data_phone=Register::where('phone',$request->name)->first();
     if(empty($request->complain))
     {
          return response()->json(['stat'=>304 , 'msg'=>"empty data"]); //wrong (mail or phone)
     }


     if($data_mail||$data_phone)
     {
     	$account=new Complain;
     	$account->username=$request->name;
     	$account->complains=$request->complain;
     	if($account->save())
     	{
     		 $response=response()->json(['user'=>$account,'stat'=>200 , 'msg'=>"success"]);
     	}
     }   
     else {
     	    $response=response()->json(['stat'=>304 , 'msg'=>"empty data"]); //wrong (mail or phone)
		  }

		  return ($response);
     }

  
}
