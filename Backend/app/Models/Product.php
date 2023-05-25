<?php
  
namespace App\Models;
  
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
  
class Product extends Model
{
    use HasFactory;
    protected $table = "products";
 
    protected $fillable = ['user_id','file','category','title','condition','price','description'];


    public function user()
{
    return $this->belongsTo(User::class,  'id');
}

public function comments()
{
    return $this->hasMany(Comment::class, 'post_id', 'id')->orderBy('created_at', 'desc');
}
}


  