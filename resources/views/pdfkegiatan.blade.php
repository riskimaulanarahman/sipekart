<!DOCTYPE html>
<html>
<head>
	<title>Uraian Kegiatan RT</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		table tr td,
		table tr th{
			font-size: 9px;
            padding: 2px;
            border: 1px solid black;
		}
        table {
            margin-top: 10px;
            margin-bottom: 20px;
            width: 100%;
            border-collapse: collapse;
        }
	</style>
	<center>
		<small>LAPORAN BULANAN PELAKSANAAN TUGAS & FUNGSI KETUA RT<br>KELURAHAN KARANG JATI KECAMATAN BALIKPAPAN TENGAH<br>TAHUN 2021</small><br>
	</center>

	<div class="row">

		<div style="font-size: 10px;">
			<li>BULAN : {{$bulan}}</li>
			<li>RT : {{$rt->nomor_rt}}</li>
			{{-- <label><b>No Surat</b> : {{$suratmasuk->no_surat}}</label><br><br>
			<label><b>Perihal</b> : {!! nl2br(e(wordwrap($suratmasuk->perihal_surat, 40, "\n", true))) !!}</label><br>
			<label><b>Diteruskan Kepada</b> : {{$disposisi->nama_karyawan}}</label><br><br><br>
			<label><b>Catatan Tindak Lanjut</b> : <br> {{$disposisi->catatan_tindak_lanjut}}</label> --}}
		</div>	

	</div>
    <div class="row">
        {{-- <table class="table table-bordered table-td-valign-middle"> --}}
        <table>
            <thead>
                <tr>
                    <th width="1%">NO</th>
                    <th class="text-nowrap text-center">TANGGAL</th>
                    <th class="text-nowrap text-center">URAIAN KEGIATAN TUGAS & FUNGSI RT</th>
                    <th class="text-nowrap text-center">KETERANGAN</th>
                </tr>
            </thead>
            <tbody>
                @php $no=1 @endphp
                @foreach($data as $p)
                <tr>
                    <td class="text-center">{{ $no++ }}</td>
                    <td>{{$p->tanggal}}</td>
                    <td>{{$p->kegiatans->nama_kegiatan}}</td>
                    <td>{{$p->keterangan}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="row">

        <div style="font-size: 10px;">
			<label>Mengetahui,</label><br>
			<label>LURAH KARANG JATI</label><br>
		</div>
		<div style="font-size: 10px; float:right; padding-right: 50px;">
			<label>Balikpapan,.........................</label><br>
			<label>KETUA RT {{$rt->nomor_rt}}</label>
            <br><br><br><br><br><br>
			<label>{{$namart}}</label><br>
		</div>

    </div>

</body>
</html>