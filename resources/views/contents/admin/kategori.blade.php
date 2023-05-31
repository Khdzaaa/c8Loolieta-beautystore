@extends('layouts.app')
@section('content')
    <div class="container">
        {{ alertbs_form($errors) }}
        <div class="row">
            <div class="col-sm-4">
                <div class="card card-rounded">
                    <div class="card-header bg-primary text-white">
                        <h5 class="card-title pt-2"> 
                            @if(!empty($request->get('id')))
                                <i class="fas fa-edit me-1"></i>
                            @else 
                                <i class="fas fa-plus me-1"></i> 
                            @endif
                            Category
                        </h5>
                    </div>
                    <div class="card-body">
                        @if(!empty($request->get('id')))
                            <form method="post" action="{{ route('admin.update_kategori') }}">
                        @else 
                            <form method="post" action="{{ route('admin.create_kategori') }}">  
                        @endif
                            @csrf
                            <div class="form-group">
                                <label for="">Category Name</label>
                                @if(!empty($request->get('id')))
                                    <input type="text" 
                                        class="form-control mt-2 @error("nama_kategori") is-invalid @enderror" 
                                        value="{{$edit->nama_kategori}}" 
                                        name="nama_kategori" id="nama_kategori" placeholder="">
                                    @error("nama_kategori")
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                    <input type="hidden" value="{{ $request->get('id') }}" name="id">
                                @else 
                                    <input type="text" 
                                        class="form-control mt-2 @error("nama_kategori") is-invalid @enderror" 
                                        value="{{old("nama_kategori")}}" name="nama_kategori" 
                                        id="nama_kategori" placeholder="">
                                    @error("nama_kategori")
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                @endif
                            </div>
                                <button type="submit" class="btn btn-primary mt-3 btn-md">Save</button>
                            @if(!empty($request->get('id')))
                                <a href="{{ route('admin.kategori') }}" class="btn btn-danger mt-3">Back</a>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="card card-rounded">
                    <div class="card-header bg-primary text-white">
                        <h5 class="card-title pt-2"> <i class="fas fa-database me-1"></i> Category Data</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" id="example1">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Category Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $no =1;@endphp
                                    @forelse($kategori as $r)
                                        <tr>
                                            <td>{{$no}}</td>      
                                            <td>{{$r->nama_kategori}}</td> 
                                            <td>
                                                <a href="{{url("admin/kategori?id=$r->id")}}" 
                                                    class="btn btn-success btn-sm" title="Edit">
                                                    <i class="fa fa-edit"></i>  
                                                </a>   
                                                <a href="{{url("admin/kategori/delete/$r->id")}}" 
                                                    class="btn btn-danger btn-sm" 
                                                    onclick="javascript:return confirm(`Are you sure to delete this data ?`);" 
                                                    title="Delete">
                                                    <i class="fa fa-times"></i> 
                                                </a>
                                            </td>
                                        </tr>
                                        @php $no++;@endphp
                                    @empty
                                        <tr>
                                            <td colspan="3">
                                                Tidak Ada Data
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                        <br>
                        {{ $kategori->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection