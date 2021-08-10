<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuratPelayanan extends Model
{
    use HasFactory;

    protected $table = 'surat_pelayanan';
    protected $primaryKey = 'id_surat_pelayanan';
    protected $guarded = ['id_surat_pelayanan'];
}
