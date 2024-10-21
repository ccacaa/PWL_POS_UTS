@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Tambah Transaksi Penjualan</h2>
    <form id="createForm">
        @csrf
        <div class="form-group">
            <label for="supplier_id">Supplier</label>
            <select name="supplier_id" id="supplier_id" class="form-control">
                @foreach ($supplier as $sup)
                    <option value="{{ $sup->supplier_id }}">{{ $sup->supplier_nama }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="barang_id">Barang</label>
            <select name="barang_id" id="barang_id" class="form-control">
                @foreach ($barang as $bar)
                    <option value="{{ $bar->barang_id }}">{{ $bar->barang_nama }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="user_id">User</label>
            <select name="user_id" id="user_id" class="form-control">
                @foreach ($user as $usr)
                    <option value="{{ $usr->user_id }}">{{ $usr->username }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="stok_tanggal">Tanggal</label>
            <input type="date" name="stok_tanggal" id="stok_tanggal" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="stok_jumlah">Jumlah</label>
            <input type="number" name="stok_jumlah" id="stok_jumlah" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

<script>
    $('#createForm').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            url: '/stok/store_ajax',
            type: 'POST',
            data: $(this).serialize(),
            success: function(response) {
                if (response.status) {
                    location.reload();
                } else {
                    alert(response.message);
                }
            },
            error: function() {
                alert('Terjadi kesalahan. Silakan coba lagi.');
            }
        });
    });
</script>
@endsection
