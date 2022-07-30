<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    
    protected $table = 'tbl_order';
    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
    public function payment(){
        return $this->belongsTo(Payment::class,'payment_id');
    }
    public function shipping(){
        return $this->belongsTo(Shipping::class,'shipping_id');
    }
}
