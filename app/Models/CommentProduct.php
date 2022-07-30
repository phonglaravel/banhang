<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentProduct extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'comment_product';
    public function product(){
        return $this->belongsTo(Product::class,'product_id','id');
    }
}
