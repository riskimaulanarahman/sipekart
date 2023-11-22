@extends('layouts.default', ['sidebarSearch' => true])

@section('title', 'Dashboard Admin')

@section('content')
	<!-- begin panel -->
	<h1>Welcome, {{ Auth::user()->nama_lengkap }}</h1>
	<!-- end panel -->
@endsection