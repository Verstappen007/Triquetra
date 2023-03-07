@extends('layout.admin')

@section('content')

@section('title','Profil Club')


<div class="col-lg-12">
    <div class="row row-cols-1 row-cols-md-2">
        <div class="col mb-4">
          <div class="card">
            <img width="70px" height="auto" src="{{ $klub->getLogo() }}" alt="">
            <div class="card-body">
              <h5 class="card-title">{{ $klub->klub }}</h5>
              <p class="card-text">{{ $klub->kota }}</p>
              <a href="/klub/{{ $klub->id }}/edit" class="btn btn-warning">Edit</a>
              <a href="/klub" class="btn btn-danger">Kembali</a>
            </div>
          </div>
        </div>

        <div class="col mb-4">
          <div class="card">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
          </div>
        </div>
    </div>
</div>
@endsection