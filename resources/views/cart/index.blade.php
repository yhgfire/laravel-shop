@extends('layouts.app')
@section('title','购物车')
@section('content')

    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card">
                <div class="card-header">购物车</div>
                <div class="card-body">
                    <div class="table table-stripped">
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="" id="select-all"></th>
                            <th>商品信息</th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody class="product_list">
                        @foreach ($cartItems as $item)
                            <tr data-id="{{$item->productSku->id}}">
                                <td>
                                    <input type="checkbox" name="select" id="" value="{{$item->productSku->id}}" {{$item->productSku->product->on_sale?'checked':'disable'}}>
                                </td>
                                <th class="product_info">
                                    <div class="preview">
                                        <a href="{{route('products.show',[$item->productSku->product_id])}}" target="_blank" class="">
                                            <img src="{{$item->productSku->product->image_url}}" alt="" class="">
                                        </a>

                                    </div>

                                    
                                </th>
                            </tr>
                        @endforeach
                        </tbody>
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop