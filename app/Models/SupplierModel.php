<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class SupplierModel extends Model
{
    protected $table ='m_supplier';
    protected $primaryKey = 'supplier_id';
    protected $fillable = ['supplier_id','supplier_kode','supplier_nama','supplier_alamat'];

    // Relasi ke stok
    public function stok()
    {
        return $this->hasMany(StokModel::class, 'supplier_id', 'supplier_id');
    }
}