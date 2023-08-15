<?php

// use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
use App\Http\Controllers\API\v1\PassportAuthController;
use App\Http\Controllers\API\v1\ProductController;
use App\Http\Controllers\API\v1\ProjectController;

Route::prefix('v1')->group(function () {
    Route::post('register', [PassportAuthController::class, 'register']);
    Route::post('login', [PassportAuthController::class, 'login']);

    Route::middleware('auth:api')->group(function () {
        // get the user details
        Route::get('get-user', [PassportAuthController::class, 'userInfo']);

        //for logging out
        Route::post('logout', [PassportAuthController::class, 'logout']);

        // crud for products
        Route::resource('products', ProductController::class);

        //
        Route::resource('projects', ProjectController::class);
    });
});



// Route::middleware('auth:api')->group(function () {
//     Route::resource('products', ProductController::class);
// });
