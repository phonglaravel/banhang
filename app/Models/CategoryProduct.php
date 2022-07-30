<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class CategoryProduct extends Model
{
    use HasFactory;
    use HasApiTokens;
    public $timestamps = false;
    protected $table = 'categoryproducts';
    public function category(){
        return $this->hasMany(Category::class,'categoryproduct_id','id');
    }
}