<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
class ProductController extends Controller
{
    //
    public function productNumber($productNumber)
    {
        return view('productpagina', ['productNumber' => $productNumber]);
    }


    public function show ( $number, Request $request)
    {
        $companies = DB::select('SELECT * FROM products WHERE id <= :id', ['id' => 10]);

//        return 'Waarde is: ' . $request->get('show_form');

        return view('product', ['id' => $number, 'companies' => $companies]);
    }


    public function productPaginaVanId($productId) {
        $productMetId = DB::select('SELECT * FROM products WHERE id = :productId', ['productId' => $productId]);
        return view('productpagina', ['productId' => $productId, 'productMetId' => $productMetId]);
    }

    public function overzichtPagina()
    {

    }
}
