@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Edit Transaksi Penjualan</h2>
    <form id="editForm">
        @csrf
        @method('PUT')
        <input type="hidden" name="id" value="{{ $stok->detail_id }}">
        <div class="form-group">
            <label for="supplier_id">Supplier</label>
            <select name="supplier_id" id="supplier_id" class="form-control">
                @foreach ($supplier as $sup)
                    <option value="{{ $sup->supplier_id }}" {{ $sup->supplier_id == $stok->supplier_id ? 'selected' : '' }}>
                        {{ $sup->supplier_nama }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="barang_id">Barang</label>
            <select name="barang_id" id="barang_id" class="form-control">
                @foreach ($barang as $bar)
                    <option value="{{ $bar->barang_id }}" {{ $bar->barang_id == $stok->barang_id ? 'selected' : '' }}>
                        {{ $bar->barang_nama }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="user_id">User</label>
            <select name="user_id" id="user_id" class="form-control">
                @foreach ($user as $usr)
                    <option value="{{ $usr->user_id }}" {{ $usr->user_id == $stok->user_id ? 'selected' : '' }}>
                        {{ $usr->username }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="stok_tanggal">Tanggal</label>
            <input type="date" name="stok_tanggal" id="stok_tanggal" class="form-control" value="{{ $stok->stok_tanggal }}" required>
        </div>
        <div class="form-group">
            <label for="stok_jumlah">Jumlah</label>
            <input type="number" name="stok_jumlah" id="stok_jumlah" class="form-control" value="{{ $stok->stok_jumlah }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<script>
    $('#editForm').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            url: '/stok/' + $('input[name="id"]').val() + '/update_ajax',
            type: 'PUT',
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
