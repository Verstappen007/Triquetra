@extends('layout.admin')

@section('content')

@section('title','Data Klub Liga 1 Indonesia')

<div class="container-fluid">
  @if(session('well done'))
  <div class="alert alert-success" role="alert">
    {{ session('well done') }}
  </div>
  @endif

    <div class="row">
      
      <div class="col-md-12">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal">
          Tambah Data Klub
        </button>

<!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Masukkan Data Klub</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
                <div class="modal-body">
                  <form action="/klub/create" method="POST">
                    @csrf
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Klub</label>
                      <input type="text" class="form-control" id="klub" name="klub" placeholder="Nama Lengkap Klub">
                    </div>

                    <div class="form-group">
                      <label for="exampleFormControlSelect1">Kota Asal Klub</label>
                      <select class="form-control" id="kota" name="kota">
                        <option value="Bali">Bali</option>
                        <option value="Bandung">Bandung</option>
                        <option value="Banjarmasin">Banjarmasin</option>
                        <option value="Bogor">Bogor</option>
                        <option value="Jakarta">Jakarta</option>
                        <option value="Kediri">Kediri</option>
                        <option value="Madura">Madura</option>
                        <option value="Makassar">Makassar</option>
                        <option value="Malang">Malang</option>
                        <option value="Samarinda">Samarinda</option>
                        <option value="Surabaya">Surabaya</option>
                        <option value="Solo">Solo</option>
                        <option value="Semarang">Semarang</option>
                        <option value="Sleman">Sleman</option>
                        <option value="Tangerang">Tangerang</option>
                      </select>
                    </div>

                      <button type="close" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                      <button type="submit" class="btn btn-primary">Simpan</button>
                  </form>
                </div>
            </div>
          </div>
        </div>
      </div>

        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Nama Klub</th>
                <th scope="col">Kota Asal Klub</th>
                <th scope="col">Aksi</th>
              </tr>
            </thead>
            <tbody>
              @foreach($data_klub as $klub)
              <tr>
                <td>{{$loop->iteration}}</td>
                <td><img src="{{ asset('images/'.$klub->logo) }}" width="20px" height="auto" alt=""><a href="/klub/{{ $klub->id }}/profile">{{ $klub->klub }}</a></td>
                <td>{{ $klub->kota }}</td>
                <td>
                  <a href="/klub/{{ $klub->id }}/edit" class="btn btn-sm btn-warning">Edit</a>
                  <a href="/klub/{{ $klub->id }}/delete" class="btn btn-sm btn-danger" onclick="return confirm('Serius Mau Dihapus ?')">Hapus</a>
                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
    </div>
</div>

@endsection

