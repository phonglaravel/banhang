<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'categories';
    public function categoryproduct(){
        return $this->belongsTo(CategoryProduct::class,'categoryproduct_id');
    }
    public function product(){
        return $this->hasMany(Product::class,'cate_id');
    }
}
