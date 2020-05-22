<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(PermissionsTablesSedeer::class);
        $this->call(UsersTablesSedeer::class);
        $this->call(ProductsTablesSedeer::class);
    }
}
