<?php
    
namespace App\Http\Controllers;
    
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
    
class ProductController extends Controller
{ 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:product-list|product-create|product-edit|product-delete', ['only' => ['index','show']]);
         $this->middleware('permission:product-create', ['only' => ['create','store']]);
         $this->middleware('permission:product-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:product-delete', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::latest()->paginate(5);
        return view('products.index',compact('products'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


     public function store(Request $request){
        $data = $request->all();

        if ($request->file('file')) {
            $extention = time().'.'.$request->file('file')->getClientOriginalExtension();

            $request->file('file')->move(public_path('product'), $extention);

            $data['file'] = $extention;
        }

        $data['user_id'] = Auth::user()->id;

        $post = Product::create($data);
		// $this->validate($request, [
		// 	'file' => 'required|file|image|mimes:jpeg,png,jpg|max:2048',
		// 	'category' => '',
		// 	'title' => '',
		// 	'condition' => '',
		// 	'price' => '',
		// 	'descripion' => '',
		// ]);
		// 	// menyimpan data file yang diupload ke variabel $file
		// $file = $request->file('file');
 
		// $nama_file = time()."_".$file->getClientOriginalName();
 
      	//     // isi dengan nama folder tempat kemana file diupload
		// $tujuan_upload = 'data_file';
		// $file->move($tujuan_upload,$nama_file);
 
		
		// Product::create([
		// 	'file' => $nama_file,
		// 	'category' => $request->category,
		// 	'title' => $request->title,
		// 	'condition' => $request->condition,
		// 	'price' => $request->price,
		// 	'description' => $request->description,
		// ]);
 
    // public function store(Request $request)
    // {
        // $this->validate($request, [
		// 	'file' => 'required',
		// 	'category' => '',
		// 	'title' => '',
		// 	'condition' => '',
		// 	'price' => '',
		// 	'descripion' => '',
		// ]);
		// // menyimpan data file yang diupload ke variabel $file
		// $file = $request->file('file');
 
		// $nama_file = time()."_".$file->getClientOriginalName();
 
      	//         // isi dengan nama folder tempat kemana file diupload
		// $tujuan_upload = 'data_file';
		// $file->move($tujuan_upload,$nama_file);
 
		
		// Product::create([
		// 	'file' => $nama_file,
		// 	'category' => $request->category,
		// 	'title' => $request->title,
		// 	'condition' => $request->condition,
		// 	'price' => $request->price,
		// 	'description' => $request->description,
        // Product::create($request->all());

        // request()->validate($request, [
        //     'file' => 'required|image|mimes:jpeg,png,jpg|max:2048',
        //     'category' => '',
        //     'title' => '',
        //     'condition' => '',
        //     'price' => '',
        //     'description' => '',
        // ]);
        
        // 		// menyimpan data file yang diupload ke variabel $file
		// $file = $request->file('file');
 
		// $nama_file = time()."_".$file->getClientOriginalName();
 
      	//         // nama folder tempat kemana file diupload
		// $tujuan_upload = 'data_file';
		// $file->move($tujuan_upload,$nama_file);

        // Product::create([
        //     'file' => $nama_file,
		// 	'category' => $request->category,
		// 	'title' => $request->title,
		// 	'condition' => $request->condition,
		// 	'price' => $request->price,
		// 	'description' => $request->description,
        // ]);
    
        return redirect()->route('products.index')
                        ->with('success','Product created successfully.');
    }
    
    // public function post(Requset $request)
    // {
    //     return [

    //     ],
    // }
    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return view('products.show',compact('product'));
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('products.edit',compact('product'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
         request()->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);
    
        $product->update($request->all());
    
        return redirect()->route('products.index')
                        ->with('success','Product updated successfully');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
    
        return redirect()->route('products.index')
                        ->with('success','Product deleted successfully');
    }
}