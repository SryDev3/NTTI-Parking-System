{{-- <x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="current-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <div class="block mt-4">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox" class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="remember">
                <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
            </label>
        </div>

        <div class="flex items-center justify-end mt-4">
            @if (Route::has('password.request'))
                <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('password.request') }}">
                    {{ __('Forgot your password?') }}
                </a>
            @endif

            <x-primary-button class="ml-3">
                {{ __('Log in') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout> --}}



@extends('layouts.master')
@section('contant')
    <div id="form-login" class="container my-3">
        <div class="row">
            <div class="col-lg-12">
                <h4><i class="fas fa-car-side text-danger"></i>&nbsp; <span class="text-danger">NTTI</span> Parking
                    System</h4>
                <hr class="border-light">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 mx-auto mt-5">
                <div class="card border-0 shadow-sm mt-4 text-dark">
                    <div class="mx-auto" style="display: in">
                        <br>
                        <img src="{{ asset('assets/images/logo') }}" class="d-flex align-items-center"
                            style="width: 150px", height="150px" alt="Logo">
                    </div>
                    <div class="card-body">
                        <h3 class="h5 text-center"><i class="fas fa-sign-in-alt text-primary"></i>&nbsp; Welcome to NTTI
                            Parking System</h3>
                        <form action="{{ route('login') }}" method="POST" class="mt-4" enctype="multipart/form-data">
                            @csrf
                            <label class="m-0 p-0 text-muted">Email</label>
                            <input type="text" name="email" class="form-control form-control-sm shadow-none" required>
                            <label class="m-0 p-0 mt-2 text-muted">Password</label>
                            <input type="password" name="password" class="form-control form-control-sm shadow-none"
                                required>
                                <div class="block mt-4">
                                    <label for="remember_me" class="inline-flex items-center">
                                        <input id="remember_me" type="checkbox" class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="remember">
                                        <span class="ml-2 text-sm text-gray-600">{{ __('Remember') }}</span>
                                    </label>
                                </div>
                            <input type="submit" class="btn btn-block mt-4 text-white bg-primary shadow-none rounded-pill"
                                name="send" value="Login">
                            <br>
                            <a href="{{ route('password.request') }}">Forget Password?</a>
                        </form>
                        <div class="row">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-6 mt-5 mx-auto"><br><br>
                <p class="text-center small mt-4">&copy; 2023 NTTI | Developed by TEAM IT06B<sub>4</sub></p>
            </div>
        </div>
    </div>
@endsection
