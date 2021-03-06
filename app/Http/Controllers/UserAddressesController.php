<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserAddressRequest;
use Illuminate\Http\Request;
use App\Models\UserAddress;

class UserAddressesController extends Controller
{
    //
    public function index(Request $request)
    {
        return view('user_addresses.index', ['addresses' => $request->user()->addresses,]);
    }

    public function create()
    {
        return view('user_addresses.create_and_edit',['address'=>new UserAddress()]);
    }

    public function store(UserAddressRequest $request)
    {
        $request->user()->address()->create($request->only(['province','city','district','address','zip','contact_name','contact_phone',]));
        return redirect()->route('user_addresses.index');
    }
}
