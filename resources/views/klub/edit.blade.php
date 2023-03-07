@extends('layout.admin')

@section('content')

@section('title','Edit Data Klub Liga 1 Indonesia')

<div class="container-fluid">
      @if(session('well done'))
      <div class="alert alert-success" role="alert">
        {{ session('well done') }}
      </div>
      @endif
        <div class="row">
            <div class="col-lg-12">
                <form action="/klub/{{ $klub->id }}/update" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Klub</label>
                      <input type="text" class="form-control" id="klub" name="klub" value="{{ $klub->klub }}">
                    </div>

                    <div class="form-group">
                      <label for="exampleFormControlFile1">Logo Klub</label>
                      <input type="file" name="logo" class="form-control-file" id="exampleFormControlFile1">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Kota Asal Klub</label>
                        <select class="form-control" id="kota" name="kota">
                          <option value="Bali" @if($klub->kota == 'Bali') selected @endif>Bali</option>
                          <option value="Bandung" @if($klub->kota == 'Bandung') selected @endif>Bandung</option>
                          <option value="Banjarmasin" @if($klub->kota == 'Banjarmasin') selected @endif>Banjarmasin</option>
                          <option value="Bogor" @if($klub->kota == 'Bogor') selected @endif>Bogor</option>
                          <option value="Jakarta" @if($klub->kota == 'Jakarta') selected @endif>Jakarta</option>
                          <option value="Kediri" @if($klub->kota == 'Kediri') selected @endif>Kediri</option>
                          <option value="Madura" @if($klub->kota == 'Madura') selected @endif>Madura</option>
                          <option value="Makassar" @if($klub->kota == 'Makassar') selected @endif>Makassar</option>
                          <option value="Malang" @if($klub->kota == 'Malang') selected @endif>Malang</option>
                          <option value="Samarinda"@if($klub->kota == 'Samarinda') selected @endif>Samarinda</option>
                          <option value="Surabaya"@if($klub->kota == 'Surabaya') selected @endif>Surabaya</option>
                          <option value="Solo"@if($klub->kota == 'Solo') selected @endif>Solo</option>
                          <option value="Semarang"@if($klub->kota == 'Semarang') selected @endif>Semarang</option>
                          <option value="Sleman"@if($klub->kota == 'Sleman') selected @endif>Sleman</option>
                          <option value="Tangerang"@if($klub->kota == 'Tangerang') selected @endif>Tangerang</option>
                        </select>
                      </div>
                      <button type="submit" class="btn btn-info">Perbarui</button>
                </form>
            </div>
        </div>
</div>

@endsection