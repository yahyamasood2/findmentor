<?php

namespace App;

use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable, HasRoles, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'profile', 'phone', 'last_login_at', 'last_login_ip', 'email_verified_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function subject()
    {
        return $this->hasMany(Subject::class, 'teacher_id', 'id');
    }

    public function experience()
    {
        return $this->hasMany(Qualification::class, 'teacher_id', 'id');
    }

    public function education()
    {
        return $this->hasMany(Education::class, 'teacher_id', 'id');
    }
    public function info()
    {
        return $this->hasOne(Teacher::class, 'teacher_id', 'id');
    }
    public function reviews()
    {
        return $this->hasMany(Review::class, 'review_to_user_id', 'id');
    }

    public function verifications()
    {
        return $this->belongsTo(UserVerification::class, 'id', 'user_id');
    }
}
