<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Sliderproduct;
use App\Product;
use DB;


class ProductsPage extends Controller
{
    public function slider ()
    {    	
    	$data=Sliderproduct::all();
    	   foreach ($data as  $value) {
            $value->img="https://zabeeeha.000webhostapp.com/public/".$value->img;
        }
      	return  ($data);
    }

    public function home()
    {
       $data= DB::table("categories")->select()->get();
   
        
    	   foreach ($data as  $value) {
            $value->img="https://zabeeeha.000webhostapp.com/public/".$value->img;
        }
    	
    	return($data);
    }

    public function view ()
    {
         
       $data_slider=ProductsPage::slider();
    	$data_home=ProductsPage::home();
    	return (response()->json(['stat'=>200 , 'msg'=>"success",'slider'=>$data_slider,'home'=>$data_home ]));
    
    }


    public function viewproduct(Request $request)
    {
    	 //$data=Product::where('id',$request->id)->get();
    	  $data=Product::select('id','img','text_of_img')->where('id', $request->id)->get();
    	 return (response()->json(['stat'=>200 , 'msg'=>"success",'product'=>$data]));


    }
    public function category (Request $req)
    {
       $data= DB::table('products')->where('category',  $req->id_product)->get();
        foreach ($data as  $value) {
            $value->img="https://zabeeeha.000webhostapp.com/public/".$value->img;
        }
         return (response()->json(['stat'=>200 , 'msg'=>"success",'product'=>$data]));
          
    }
}
