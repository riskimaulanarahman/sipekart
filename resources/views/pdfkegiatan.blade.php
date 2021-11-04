@php
    use Illuminate\Support\Carbon;
@endphp
<!DOCTYPE html>
<html>
<head>
	<title>Uraian Kegiatan RT</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		.tbl-kegiatan tr td,
		.tbl-kegiatan tr th{
			font-size: 9px;
            padding: 2px;
            border: 1px solid black;
		}
        .tbl-kegiatan {
            margin-top: 10px;
            margin-bottom: 20px;
            width: 100%;
            border-collapse: collapse;
        }

        /* .tbl-noborder tr td,
		.tbl-noborder tr th{
			font-size: 9px;
            padding: 2px;
		} */

        .table-noborder {
			font-size: 9px;
            
            margin-top: 10px;
            margin-bottom: 20px;
            width: 100%;
            border-collapse: collapse;
            /* border: none !important; */
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
        <table class="tbl-kegiatan">
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
                    {{-- <td>{{$p->tanggal}}</td> --}}
                    {{-- <td> --}}
                        <?php 
                    // setlocale(LC_ALL, 'id-ID', 'id_ID');
                    // echo strftime("%A, %d %B %Y", strtotime($p->tanggal)) . "\n";
                    ?>
                    {{-- </td> --}}
                    <td>{{ Carbon::parse($p->tanggal)->translatedFormat('l, d F Y') }}</td>
                    <td>{{$p->kegiatans->nama_kegiatan}}</td>
                    <td>{{$p->keterangan}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="row">

        <table class="table-noborder" cellspacing="0" cellpadding="0">
            <tr>
                <td>Mengetahui,</td>
                <td></td>
                <td style="float:right;width:10%;">Balikpapan,.........................</td>
            </tr>
            <tr>
                <td>Kepala Seksi Pemerintahan & Pelayanan Publik<br><br><br><br><br><br></td>
                <td></td>
                <td style="float:right;width:10%;">KETUA RT {{$rt->nomor_rt}}<br><br><br><br><br><br></td>
            </tr>
            <tr>
                <td>{{$namaadmin}}</td>
                <td></td>
                <td style="float:right;width:10%;">{{$namart}}</td>
            </tr>
        </table>

        {{-- <div style="font-size: 10px;">
			<label>Mengetahui,</label><br>
			<label>Kepala Seksi Pemerintahan & Pelayanan Publik</label>
            <br><br><br><br><br><br>
			<label>{{$namaadmin}}</label><br>
		</div>
		<div style="font-size: 10px; float:right; padding-right: 50px;">
			<label>Balikpapan,.........................</label><br>
			<label>KETUA RT {{$rt->nomor_rt}}</label>
            <br><br><br><br><br><br>
			<label>{{$namart}}</label><br>
		</div> --}}

    </div>

</body>
</html>