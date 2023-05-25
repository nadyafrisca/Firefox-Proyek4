@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 row">
            @foreach ($products as $data)
                <div class="col-md-4">
                    <div style="height: 300px; width: 100%; overflow: hidden;">
                        <a href="#comment{{$data->id}}" data-bs-toggle="modal" class="relative d-flex justify-content-between">
                            <div class="overlay"></div>
                            <img src="{{asset('product/'.$data->file)}}" alt="file">
                        </a>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="comment{{$data->id}}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="modal-title" id="staticBackdropLabel">
                                   
                                    </div>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="d-flex justify-content-between col-12 m-0">
                                        <div class="col-6">
                                            <img class="col-12" src="{{asset('product/'.$data->file)}}" alt="file">
                                        </div>
                                        <div class="col-6 d-flex flex-column justify-content-between">
                                            <div class="ms-3 overflow-scroll" style="height: 400px">
                                                <div class="mb-2">
                                                <span class="mr-5 text-xl fw-bold">{{$data->user->name}}</span>
                                                
                                                    <a class="text-decoration-none ms-1" href="">
                                                    <span class="fs-5 d-block fw-bold">{{$data->category}}</span>
                                                    </a>
                                                    <span class="ms-2">{!!$data->description!!}</span>
                                                    <p class="text-sm text-secondary">{{$data->created_at}}</p>
                                                </div>
                                                @foreach ($data->comments as $comment)
                                                    <div class="mb-2">
                                                        
                                                        <a class="text-decoration-none ms-1" href="">
                                                            <span class="mr-5 text-xl fw-bold">{{$comment->user->user_name}}</span>
                                                        </a>
                                                        <span class="ms-2">{{$comment->comment}}</span>
                                                        <p class="text-sm text-secondary">{{$comment->created_at}}</p>
                                                    </div>
                                                @endforeach
                                            </div>
                                            <form action="{{route('comment.update', $data->id)}}" method="POST" class="ms-3">
                                                @csrf
                                                @method('PUT')
                                                <input type="text" class="form-control" autocomplete="off" placeholder="Add a comment" name="comment">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

    <!-- <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Products</h2>
            </div>
            <div class="pull-right">
                @can('product-create')
                <a class="btn btn-success" href="{{ route('products.create') }}"> Create New Product</a>
                @endcan
            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif


    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Gambar</th>
            <th>Category</th>
            <th>Title</th>
            <th>Condition</th>
            <th>Price</th>
            <th>Description</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($products as $product)
        <tr>
            <td>{{ ++$i }}</td>
            <td><img width="150px" src="{{ url('/data_file/'.$product->file) }}"></td>
            <td>{{ $product->category }}</td>
            <td>{{ $product->title }}</td>
            <td>{{ $product->condition }}</td>
            <td>{{ $product->price }}</td>
            <td>{{ $product->description }}</td>
            <td>
                <form action="{{ route('products.destroy',$product->id) }}" method="POST">
                    <a class="btn btn-info" href="{{ route('products.show',$product->id) }}">Show</a>
                    @can('product-edit')
                    <a class="btn btn-primary" href="{{ route('products.edit',$product->id) }}">Edit</a>
                    @endcan


                    @csrf
                    @method('DELETE')
                    @can('product-delete')
                    <button type="submit" class="btn btn-danger">Delete</button>
                    @endcan
                </form>
            </td>
        </tr>
        @endforeach
    </table>


    {!! $products->links() !!} -->

@endsection