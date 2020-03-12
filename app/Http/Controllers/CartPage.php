<?php
/* controller */
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Cart;
use App\Product;
use DB;
use Carbon\Carbon;
use App\sell;
use DateTime;


class CartPage extends Controller
{
    public function product (Request $request)
    {
        Cart::where('created_at', '<', Carbon::now()->subDays(15))->delete();
   
	$product=$request->id_product;
	if(empty($request->id_user)||empty($product))
	{
	     return (response()->json(['stat'=>304 , 'msg'=>"empty Data"]));
	}
	if(!Product::Where('id',$product)->first())
	{
	     return (response()->json(['stat'=>304 , 'msg'=>"try again"]));
	}
	     Cart::where([
        ['id_product',$product],
        ['id_user',$request->id_user]
        ])->delete();
       
            $now = new DateTime();
       		DB::table('carts')->insert(
            ['id_user' => $request->id_user , 'id_product'=>$product ,'created_at'=>$now]);
        
         return (response()->json(['stat'=>200 , 'msg'=>"success"]));
    }

 	public function cart(Request $request)
 	{
$data=Cart::select()->where('id_user',$request->id_user)->get();  

         if(!empty($data[0]->id)){
         
         $response=array();
         foreach($data as $product)
         {
             $response[]=Product::where('id',$product->id_product)->first(); 
         }
        
         foreach($response as $img)
         {
             $img->img="https://zabeeeha.000webhostapp.com/public/".$img->img;
         }
        
         return(response()->json((['stat'=>200 , 'msg'=>"success","Order"=>$response])));
         }
         else
         {
                return (response()->json(['stat'=>304 , 'msg'=>"empty Data"]));
         }
 	 }

 	public function endorder(Request $request)
 		{
 		$sell=new sell;
		$array_products=$request->input('id_product');
		$array_count=$request->input('count_of_product');
		if(empty($request->id_user) || empty($request->total))
		{
		    	return (response()->json(['stat'=>304 , 'msg'=>"empty Data"]));
		}
		
			foreach ($array_products as $index=>$product) {
			    if(empty($product) || empty($array_count[$index]))
			    {
			      
			        	return (response()->json(['stat'=>304 , 'msg'=>"empty Data"]));
			        
			    }
			}
			foreach ($array_products as $index=>$product) {
			   
			 $data= Product::select('max_count')->where('id',$product)->first();
					if($data->max_count-$array_count[$index]>=0)
					{
						continue;
					}
					else
					{
			return(response()->json(['stat'=>304 , 'msg'=>"Wrong Data"]));

					}
		}
		$id_product = serialize(array($array_products)); 
		$count_of_product=serialize(array($array_count));
		$sell->idproduct=$id_product;
		$sell->total=$request->total;
		$sell->count_of_product=$count_of_product;
		$sell->id_user=$request->id_user;			    	
	 
		if($sell->save())
		  {
			for( $i=0; $i<count($array_products); $i++) {
			DB::table('products')->where('id',$array_products[$i])->decrement('max_count', $array_count[$i]);
			Cart::where([['id_product',$array_products[$i]],['id_user',$request->id_user]])->delete();
			}

			return(response()->json((['stat'=>200 , 'msg'=>"success"])));
		}
		else
 		{
 			return(response()->json((['stat'=>304 , 'msg'=>"empty data"])));
 		}

		
			
 		}
 		
 	public function terms()
 	{
 	    $img='https://zabeeeha.000webhostapp.com/public/terms.jpg';
 	    $text_1='تطبيق الذبائح';
 	    $text_2='يعتبر تطبيق الذبائح من اسهل الطرق لشراء الذبائح اون لاين و بكل سهوله و سلاسه';
        $response=array('img'=>$img,'text_1'=>$text_1,'text_2'=>$text_2); 	    
 	    
			return(response()->json(['stat'=>200 , 'msg'=>"success","terms_of_use"=>$response]));
 	    
 	    
 	}

 	}

