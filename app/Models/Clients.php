<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clients extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $tabel = 'clients';

    protected $fillable = [
        'no_service',
        'name',
        'address',
        'status',
    ];

    public function staffUser()
    {
        return $this->belongsTo(User::class, 'staff', 'id');
    }

    public static function getClientsData()
    {
        return static::join('users', 'clients.staff', '=', 'users.id')
            ->select('users.name as username', 'users.email', 'users.password', 'users.image', 'clients.service', 'clients.name as client_name', 'clients.address', 'clients.status')
            ->get();
    }
}
