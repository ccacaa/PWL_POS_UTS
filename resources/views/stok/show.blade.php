@extends('layouts.template')

@section('content')
    <div class="card card-outline card-primary">
        <div class="card-header">
            <h3 class="card-title">{{ $page->title }}</h3>
            <div class="card-tools"></div>
        </div>
        <div class="card-body">
            @empty($stok)
                <div class="alert alert-danger alert-dismissible">
                    <h5><i class="icon fas fa-ban"></i> Kesalahan!</h5>
                    Data yang Anda cari tidak ditemukan.
                </div>
            @else
                <table class="table table-bordered table-striped table-hover table-sm">
                    <tr>
                        <th>ID</th>
                        <td>{{ $stok->stok_id }}</td>
                    </tr>
                    <tr>
                        <th>Nama Supplier</th>
                        <td>{{ $stok->supplier->supplier_nama }}</td>
                    </tr>
                    <tr>
                        <th>Nama Barang</th>
                        <td>{{ $stok->barang->barang_nama }}</td>
                    </tr>
                    <tr>
                        <th>Nama User</th>
                        <td>{{ $stok->user->username }}</td>
                    </tr>
                    <tr>
                        <th>Tanggal Stok</th>
                        <td>{{ \Carbon\Carbon::parse($stok->stok_tanggal)->format('d M Y, H:i') }}</td>
                    </tr>
                    <tr>
                        <th>Jumlah Stok</th>
                        <td>{{ $stok->stok_jumlah }}</td>
                    </tr>
                </table>
            @endempty
            <a href="{{ route('stok.index') }}" class="btn btn-sm btn-default mt-2">Kembali</a>
        </div>
    </div>
@endsection
@push('css')
@endpush
@push('js')
@endpush