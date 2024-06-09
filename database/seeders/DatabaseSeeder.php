<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admin')->insert([
            [
                'id' => 2,
                'email' => 'admin1@gmail.com',
                'password' => '$2y$10$jysuC3aCCI0I4EBl6G7AY.tqancUcxEQII40/YJp5yEla3lbEbAf6',
                'role' => 'superadmin',
            ],
            [
                'id' => 4,
                'email' => 'dokter@gmail.com',
                'password' => '$2y$10$V.MB0a2juHWJG4JLnRW.i.GKOXu49FVflDheFsIKavsQVm8yDx.WO',
                'role' => 'dokter',
            ],
        ]);
    }
}
