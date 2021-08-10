@extends('layouts.default', ['sidebarSearch' => true])

@section('title', 'Page with Search Sidebar')

@section('content')
	<!-- begin row -->
	<div class="row">
		<!-- begin col-3 -->
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-blue">
				<div class="stats-icon"><i class="fa fa-caret-square-down"></i></div>
				<div class="stats-info">
					<h4>SURAT MASUK</h4>
					{{-- <p>3,291,922</p>	 --}}
					<ul>
						<li>Hari ini : <b>{{$todaysm}}</b></li>
						<li>Minggu ini : <b>{{$weeksm}}</b></li>
						<li>Bulan ini : <b>{{$monthsm}}</b></li>
						<li>Bulan lalu : <b>{{$monthsmlast}}</b></li>
					</ul>
				</div>
				<div class="stats-link">
					<a href="/surat-masuk">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
		<!-- begin col-3 -->
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-info">
				<div class="stats-icon"><i class="fa fa-caret-square-up"></i></div>
				<div class="stats-info">
					<h4>SURAT KELUAR</h4>
					<ul>
						<li>Hari ini : <b>{{$todaysk}}</b></li>
						<li>Minggu ini : <b>{{$weeksk}}</b></li>
						<li>Bulan ini : <b>{{$monthsk}}</b></li>
						<li>Bulan lalu : <b>{{$monthsklast}}</b></li>
					</ul>
				</div>
				<div class="stats-link">
					<a href="/surat-keluar">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
		<!-- begin col-3 -->
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-orange">
				<div class="stats-icon"><i class="fa fa-envelope"></i></div>
				<div class="stats-info">
					<h4>SURAT PENGANTAR</h4>
					<ul>
						<li>Hari ini : <b>{{$todaysp}}</b></li>
						<li>Minggu ini : <b>{{$weeksp}}</b></li>
						<li>Bulan ini : <b>{{$monthsp}}</b></li>
						<li>Bulan lalu : <b>{{$monthsplast}}</b></li>
					</ul>
				</div>
				<div class="stats-link">
					<a href="/surat-pelayanan">View Detail <i class="fa fa-arrow-alt-circle-right"></i></a>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
	</div>
	<!-- end row -->
	<!-- begin panel -->
	<div class="panel panel-inverse">
		<div class="panel-heading">
			<h4 class="panel-title">Panel Title here</h4>
			<div class="panel-heading-btn">
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
		</div>
		<div class="panel-body">
			Panel Content Here
		</div>
	</div>
	<!-- end panel -->
@endsection