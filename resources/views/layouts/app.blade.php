<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{csrf_token()}}">
    <title>@yield('title','laravel shop') --电商教程</title>
    <link rel="stylesheet" href="{{mix('css/app.css')}}" class="">
</head>

<body>

<div id="app" class="{{route_class()}}-page">
    @include('layouts._header')
    <div class="container">
        @yield('content')
    </div>
    @include('layouts._footer')
</div>
<script src="{{mix('js/app.js')}}"></script>
</body>
</html>