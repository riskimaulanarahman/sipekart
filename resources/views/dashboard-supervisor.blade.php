@extends('layouts.default', ['sidebarSearch' => true])

@section('title', 'Dashboard')

@section('content')
	<!-- begin row -->
	<div class="row">
		<!-- begin col-3 -->
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-teal">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-caret-square-down"></i></div>
				<div class="stats-content">
					<div class="stats-title">SURAT MASUK</div>
					<div class="stats-number">{{$monthsmlast}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 100%;"></div>
					</div>
					<div class="stats-desc">
						<li>Hari ini : <b>{{$todaysm}}</b></li>
						<li>Minggu ini : <b>{{$weeksm}}</b></li>
						<li>Bulan ini : <b>{{$monthsm}}</b></li>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-red">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-caret-square-up"></i></div>
				<div class="stats-content">
					<div class="stats-title">SURAT KELUAR</div>
					<div class="stats-number">{{$monthsklast}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 100%;"></div>
					</div>
					<div class="stats-desc">
						<li>Hari ini : <b>{{$todaysk}}</b></li>
						<li>Minggu ini : <b>{{$weeksk}}</b></li>
						<li>Bulan ini : <b>{{$monthsk}}</b></li>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="widget widget-stats bg-orange">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-book"></i></div>
				<div class="stats-content">
					<div class="stats-title">SURAT PELAYANAN</div>
					<div class="stats-number">{{$monthsplast}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 100%;"></div>
					</div>
					<div class="stats-desc">
						<li>Hari ini : <b>{{$todaysp}}</b></li>
						<li>Minggu ini : <b>{{$weeksp}}</b></li>
						<li>Bulan ini : <b>{{$monthsp}}</b></li>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end row -->
@endsection