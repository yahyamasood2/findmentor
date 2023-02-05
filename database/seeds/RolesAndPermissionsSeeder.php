<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Reset cached roles and permissions
        app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();

        // create permissions
        Permission::create(['name' => 'All']);
        Permission::create(['name' => 'Create']);
        Permission::create(['name' => 'Delete']);
        Permission::create(['name' => 'Edit']);
        Permission::create(['name' => 'Post']);
        Permission::create(['name' => 'Show']);

        // create roles and assign created permissions

        // or may be done by chaining
        $role = Role::create(['name' => 'teacher'])
            ->givePermissionTo(['Create', 'Delete', 'Edit', 'Post', 'Show']);

        $role = Role::create(['name' => 'student'])
            ->givePermissionTo(['Create', 'Delete', 'Edit', 'Post', 'Show']);

        $role = Role::create(['name' => 'super-admin']);
        $role->givePermissionTo(Permission::all());
    }
}
