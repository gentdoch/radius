<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $role_admin = Role::updateOrCreate(
            [
                'name' => 'admin',
            ],
            ['name' => 'admin']
        );
        $role_staff = Role::updateOrCreate(
            [
                'name' => 'staff',
            ],
            ['name' => 'staff']
        );
        $role_client = Role::updateOrCreate(
            [
                'name' => 'client',
            ],
            ['name' => 'client']
        );

        $permission = Permission::updateOrCreate(
            [
                'name' => 'view_user',
            ],
            ['name' => 'view_user']
        );
        $permission2 = Permission::updateOrCreate(
            [
                'name' => 'view_client',
            ],
            ['name' => 'view_client']
        );

        $role_admin->givePermissionTo($permission);
        $role_admin->givePermissionTo($permission2);
        $role_staff->givePermissionTo($permission2);

        $user = User::find(3);
        $user2 = User::find(2);

        $user->assignRole(['admin']);
        $user2->assignRole(['staff']);
    }
}
