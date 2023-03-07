<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kompetisi extends Model
{
    protected $table = 'kompetisi';
    protected $fillable = ['kode'];

    public function klub()
    {
        return $this->belongsToMany(Klub::class);
    }
}
