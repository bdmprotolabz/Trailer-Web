<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Session;
use Closure;

class check_login
{
/**
 * Handle an incoming request.
 *
 * @param  \Illuminate\Http\Request  $request
 * @param  \Closure  $next
 * @return mixed
 */
public function handle($request, Closure $next)
{

$key = Session::get('dealer');

if($key)
{

}
else {
return redirect('/');
}
return $next($request);
}
}

