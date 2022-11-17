<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class CalcServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //        // You should never attempt to register any event listeners, routes, or any other piece of functionality
        //        // within the register method.
//        $this->app->bind()
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // Boot wordt opgeroepen nadat alle services zijn geladen
    }
}
