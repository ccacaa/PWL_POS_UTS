@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Daftar Transaksi Penjualan</h2>
    <button class="btn btn-success" onclick="modalAction('{{ route('stok.create_ajax') }}')">Tambah Transaksi</button>
    <table id="transaksiTable" class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Supplier</th>
                <th>Barang</th>
                <th>User</th>
                <th>Tanggal</th>
                <th>Jumlah</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>

<script>
    $(document).ready(function() {
        $('#transaksiTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('transaksi.list') }}',
            columns: [
                { data: 'detail_id', name: 'detail_id' },
                { data: 'penjualan.supplier.supplier_nama', name: 'penjualan.supplier.supplier_nama' },
                { data: 'barang.barang_nama', name: 'barang.barang_nama' },
                { data: 'user.username', name: 'user.username' },
                { data: 'stok_tanggal', name: 'stok_tanggal' },
                { data: 'stok_jumlah', name: 'stok_jumlah' },
                { data: 'aksi', name: 'aksi', orderable: false, searchable: false }
            ]
        });
   
