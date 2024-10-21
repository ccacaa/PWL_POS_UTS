<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    // public function hello(){
    //     return 'Hello World';
    // }

    // prak 3 nomor 8,9)
    // public function greeting(){
    //     return view('blog.hello', ['name' => 'Caca']);
    //     }
    // prak 3 nomor11
    // Public function greeting(){
    //     return view('blog.hello')
    //     ->with('name','Andi')
    //     ->with('occupation','Astronaut');
    // }

    //js 5 prak 2 (1)
    public function index()
    {
        $breadcrumb = (object)[
            'title' => 'Selamat Datang',
            'list' => ['Home', 'Welcome']
        ];
        $activeMenu = 'dasboard';
        return view('welcome', ['breadcrumb' => $breadcrumb, 'activeMenu' => $activeMenu]);
    }
}
?>