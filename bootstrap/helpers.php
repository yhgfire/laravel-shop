<?php
/**
 * Created by PhpStorm.
 * User: yhgfire
 * Date: 2020/2/14
 * Time: 10:51
 */
function test_helper()
{
    return 'ok';
}

function route_class()
{
    return str_replace('.', '_', Route::currentRouteName());
}