<?php
    
namespace App\Http\Controllers;
    
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
    
class ProductApiController extends Controller
{
    public function dashboard()
    {
        $products = Product::all();
        return response()->json(['data'  => $products]);


        // $products = Product::latest()->paginate(5);
        // return view('products.index',compact('products'))
        //     ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function store(Reques $request)
    {
        $product = Product::create($request->all());
        return response()->json(['data'  => $product]);

    }
}