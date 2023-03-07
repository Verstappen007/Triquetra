<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Klub extends Model
{
    protected $table = 'klub';
    protected $fillable = ['avatar','klub','kota'];

    public function getLogo()
    {
        if(!$this->logo)
        {
            return asset('images/default.jpg');
        }
            return asset('images/'.$this->logo);
    }

    public function kompetisi()
    {
        return $this->belongsToMany(Kompetisi::class);
    }
}

