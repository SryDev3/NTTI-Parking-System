{{-- <x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        {{ __('Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <x-primary-button>
                {{ __('Email Password Reset Link') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout> --}}




@extends('layouts.master')
@section('contant')
    <div class="container my-3">
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
                    <div class="mx-auto">
                        <img src="{{ asset('assets/images/email_error.svg') }}" class="d-flex align-items-center"
                            style="width: 120px", height="120px" alt="Logo">
                    </div>
                    <div class="card-body">
                        <h3 class="h5 text-center"><i class="fas fa-sign-in-alt text-primary"></i>&nbsp; Welcome to NTTI
                            Parking System</h3>
                        <form action="#" method="POST" class="mt-4" enctype="multipart/form-data">
                            @csrf
                            <label class="m-0 p-0 text-muted">Email</label>
                            <input type="text" name="email" class="form-control form-control-sm shadow-none" required>
                            <input type="submit" class="btn btn-block mt-4 text-white bg-primary shadow-none rounded-pill"
                                name="send" value="Email Password Reset Link">
                        </form>
                        <a href="{{route('login')}}" style="text-decoration: linen">
                            <input type="submit" class="btn btn-block mt-4 text-white bg-danger shadow-none rounded-pill"
                            name="send" value="Back To Login">
                        </a>
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
