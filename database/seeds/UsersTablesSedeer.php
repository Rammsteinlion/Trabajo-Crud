<?php

use Illuminate\Database\Seeder;
use Caffeinated\Shinobi\Models\Role;

class UsersTablesSedeer extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 15)->create();

        Role::create([
            'name' => 'Admin',
            'slug' => 'admin',
            'special' => 'all-access'
        ]);
    }
}
