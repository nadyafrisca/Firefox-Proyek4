@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Add New Product</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('products.index') }}"> Back</a>
            </div>
        </div>
    </div>


    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <form action="{{ route('products.store') }}" method="POST">
        @csrf

       				<div class="form-group">
						<b>File Gambar</b><br/>
						<input type="file" name="file">
					</div>
 
					<div class="form-group">
						<b>Category</b>
						<textarea class="form-control" name="category"></textarea>
					</div>

					<div class="form-group">
						<b>Tittle</b>
						<textarea class="form-control" name="title"></textarea>
					</div>

					<div class="form-group">
						<b>Condition</b>
						<textarea class="form-control" name="condition"></textarea>
					</div>

					<div class="form-group">
						<b>Price</b>
						<textarea class="form-control" name="price"></textarea>
					</div>

					<div class="form-group">
						<b>Description</b>
						<textarea class="form-control" name="description"></textarea>
					</div>
 
					<input type="submit" value="Upload" class="btn btn-primary">
	</form>

@endsection