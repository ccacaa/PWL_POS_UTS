<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;
use App\Models\TransaksiModel;
use App\Models\BarangModel;
use App\Models\PenjualanModel;
use App\Models\UserModel;
use App\Models\SupplierModel;
use Barryvdh\DomPDF\Facade\Pdf;

class TransaksiController extends Controller
{
    // Menampilkan daftar transaksi penjualan
    public function index()
    {
        $breadcrumb = (object) [
            'title' => 'Daftar Transaksi Penjualan',
            'list' => ['Home', 'Penjualan']
        ];

        $page = (object) [
            'title' => 'Daftar Transaksi Penjualan'
        ];

        $activeMenu = 'transaksi';

        $penjualan = PenjualanModel::all();
        $barang = BarangModel::all();

        return view('penjualan.index', [
            'breadcrumb' => $breadcrumb,
            'page' => $page,
            'penjualan' => $penjualan,
            'barang' => $barang,
            'activeMenu' => $activeMenu
        ]);
    }

    // Menampilkan data transaksi untuk DataTables
    public function list(Request $request)
    {
        $transaksi = TransaksiModel::select('detail_id', 'penjualan_id')->with('harga', 'jumlah');

        // Filter data berdasarkan penjualan_id
        if ($request->penjualan_id) {
            $transaksi->where('penjualan_id', $request->penjualan_id);
        }

        // Mengembalikan data untuk DataTables
        return DataTables::of($transaksi)
            ->addIndexColumn()
            ->addColumn('aksi', function ($stok) {
                $btn = '<button onclick="modalAction(\'' . url('/stok/' . $stok->stok_id . '/show_ajax') . '\')" class="btn btn-info btn-sm">Detail</button> ';
                $btn .= '<button onclick="modalAction(\'' . url('/stok/' . $stok->stok_id . '/edit_ajax') . '\')" class="btn btn-warning btn-sm">Edit</button> ';
                $btn .= '<button onclick="modalAction(\'' . url('/stok/' . $stok->stok_id . '/delete_ajax') . '\')" class="btn btn-danger btn-sm">Hapus</button>';
                return $btn;
            })
            ->rawColumns(['aksi'])
            ->make(true);
    }

    // Menampilkan form untuk menambah transaksi
    public function create_ajax()
    {
        $supplier = SupplierModel::select('supplier_id', 'supplier_nama')->get();
        $user = UserModel::select('user_id', 'username')->get();
        $barang = BarangModel::select('barang_id', 'barang_nama')->get();

        return view('stok.create_ajax', [
            'supplier' => $supplier,
            'user' => $user,
            'barang' => $barang
        ]);
    }

    // Menyimpan data transaksi baru
    public function store_ajax(Request $request)
    {
        if ($request->ajax() || $request->wantsJson()) {
            $rules = [
                'supplier_id' => 'required|integer',
                'barang_id' => 'required|integer',
                'user_id' => 'required|integer',
                'stok_tanggal' => 'required|date',
                'stok_jumlah' => 'required|integer'
            ];

            $validator = Validator::make($request->all(), $rules);

            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Validasi Gagal',
                    'msgField' => $validator->errors(),
                ]);
            }

            TransaksiModel::create($request->all());

            return response()->json([
                'status' => true,
                'message' => 'Data stok berhasil disimpan',
            ]);
        }

        return redirect('/');
    }

    // Menampilkan form untuk mengedit transaksi
    public function edit_ajax(string $id)
    {
        $stok = TransaksiModel::find($id);
        $supplier = SupplierModel::select('supplier_id', 'supplier_nama')->get();
        $user = UserModel::select('user_id', 'username')->get();
        $barang = BarangModel::select('barang_id', 'barang_nama')->get();

        return view('stok.edit_ajax', [
            'stok' => $stok,
            'supplier' => $supplier,
            'user' => $user,
            'barang' => $barang
        ]);
    }

    // Memperbarui data transaksi
    public function update_ajax(Request $request, $id)
    {
        if ($request->ajax() || $request->wantsJson()) {
            $rules = [
                'supplier_id' => 'required|integer',
                'barang_id' => 'required|integer',
                'user_id' => 'required|integer',
                'stok_tanggal' => 'required|date',
                'stok_jumlah' => 'required|integer'
            ];

            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Validasi gagal.',
                    'msgField' => $validator->errors()
                ]);
            }

            $check = TransaksiModel::find($id);
            if ($check) {
                $check->update($request->all());
                return response()->json([
                    'status' => true,
                    'message' => 'Data berhasil diupdate'
                ]);
            } else {
                return response()->json([
                    'status' => false,
                    'message' => 'Data tidak ditemukan'
                ]);
            }
        }

        return redirect('/');
    }

    // Menampilkan konfirmasi sebelum menghapus transaksi
    public function confirm_ajax(string $id)
    {
        $stok = TransaksiModel::find($id);
        return view('stok.confirm_ajax', ['stok' => $stok]);
    }

    // Menghapus data transaksi
    public function delete_ajax(Request $request, $id)
    {
        if ($request->ajax() || $request->wantsJson()) {
            $stok = TransaksiModel::find($id);
            if ($stok) {
                $stok->delete();
                return response()->json([
                    'status' => true,
                    'message' => 'Data berhasil dihapus'
                ]);
            } else {
                return response()->json([
                    'status' => false,
                    'message' => 'Data tidak ditemukan'
                ]);
            }
        }

        return redirect('/');
    }

    public function export_pdf()
    {
        set_time_limit(120);
        $barang = TransaksiModel::select('kategori_id', 'barang_kode', 'barang_nama', 'harga_beli', 'harga_jual')
            ->orderBy('kategori_id')
            ->orderBy('barang_kode')
            ->with('kategori')
            ->get();

        $pdf = Pdf::loadView('barang.export_pdf', ['barang' => $barang]);
        $pdf->setPaper('a4', 'potrait');
        $pdf->setOption('isRemoteEnabled', true);
        $pdf->render();

        return $pdf->stream('Data Barang' . date('Y-m-d H:i:s') . '.pdf');
    }
}
