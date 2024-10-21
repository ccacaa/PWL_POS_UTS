@extends('layouts.app')

@section('content')
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="confirmModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmModalLabel">Konfirmasi Penghapusan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Apakah Anda yakin ingin menghapus data transaksi berikut?</p>
                <ul>
                    <li>ID: {{ $stok->detail_id }}</li>
                    <li>Supplier: {{ $stok->penjualan->supplier->supplier_nama }}</li>
                    <li>Barang: {{ $stok->barang->barang_nama }}</li>
                    <li>Jumlah: {{ $stok->jumlah }}</li>
                    <li>Tanggal: {{ $stok->stok_tanggal }}</li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                <button type="button" class="btn btn-danger" onclick="deleteAction('{{ $stok->detail_id }}')">Hapus</button>
            </div>
        </div>
    </div>
</div>

<script>
    function deleteAction(id) {
        $.ajax({
            url: '/stok/' + id + '/delete_ajax',
            type: 'DELETE',
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
    }
</script>
@endsection
