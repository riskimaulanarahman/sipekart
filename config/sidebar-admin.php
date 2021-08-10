<?php

return [

    /*
    |--------------------------------------------------------------------------
    | View Storage Paths
    |--------------------------------------------------------------------------
    |
    | Most templating systems load templates from disk. Here you may specify
    | an array of paths that should be checked for your views. Of course
    | the usual Laravel view path has already been registered for you.
    |
    */
  'menu' => [
        [
            'icon' => 'fa fa-home',
            'title' => 'Dashboard',
            'url' => '/',
            'route-name' => 'admin.index'
        ],[
                'icon' => 'fa fa-folder',
                'title' => 'Master Data',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => 'javascript:;',
                        'title' => 'Master Data RT'
                    ],
                    [
                        'url' => 'javascript:;',
                        'title' => 'Master Data Penduduk'
                    ],
                    [
                        'url' => 'javascript:;',
                        'title' => 'Master Data Pegawai'
                    ]]
            ],[
                'icon' => 'fa fa-file-alt',
                'title' => 'Master Surat',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => '/surat-masuk',
                        'title' => 'Surat Masuk',
                        'route-name' => 'admin.suratmasuk'
                    ],[
                        'url' => '/surat-keluar',
                        'title' => 'Surat Keluar',
                        'route-name' => 'admin.suratkeluar'
                    ],[
                        'url' => '/surat-pelayanan',
                        'title' => 'Surat Pelayanan',
                        'route-name' => 'admin.suratpelayanan'
                    ],[
                        'url' => '/surat-vital',
                        'title' => 'Surat Vital',
                        'route-name' => 'admin.suratvital'
                    ]]
            ],[
                'icon' => 'fa fa-archive',
                'title' => 'Master Arsip',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => 'javascript:;',
                        'title' => 'Daftar Arsip Aktif',
                    ],[
                        'url' => 'javascript:;',
                        'title' => 'Daftar Arsip Inaktif',
                    ],[
                        'url' => 'javascript:;',
                        'title' => 'Daftar Arsip Vital',
                    ],[
                        'url' => 'javascript:;',
                        'title' => 'Daftar Arsip Pelayanan',
                    ]]
        ],[
            'icon' => 'fa fa-file',
            'title' => 'SOP',
            'url' => 'javascript:;',
        ],[
                'icon' => 'fa fa-archive',
                'title' => 'Tabel Referensi',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => 'javascript:;',
                        'title' => 'Doc Riwayat Kepegawaian',
                        'sub_menu' => [[
                            'url' => 'javascript:;',
                            'title' => 'KP4',
    
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'KGB',
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'Kenaikan Pangkat',
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'SPK',
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'SPK Non PNS',
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'Struktur Kelurahan',
                        ]]
                    ],[
                        'url' => 'javascript:;',
                        'title' => 'Doc Laporan Keuangan',
                        'sub_menu' => [[
                            'url' => 'javascript:;',
                            'title' => 'Laporan Keuangan Kasi Pemerintahan & PP',
    
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'Laporan Keuangan Kasi Permas',
    
                        ],[
                            'url' => 'javascript:;',
                            'title' => 'Laporan Keuangan Kasi Tramtib & LH',
    
                        ]]
                    ]
                ]
        ],[
            'icon' => 'fa fa-file',
            'title' => 'Cetak Rekap',
            'url' => 'javascript:;',
            'caret' => true,
            'sub_menu' => [
                [
                    'url' => 'javascript:;',
                    'title' => 'Cetak Rekap Data Master'
                ],[
                    'url' => 'javascript:;',
                    'title' => 'Cetak Rekap Dokumen Pegawai'
                ],[
                    'url' => 'javascript:;',
                    'title' => 'Cetak Rekap Dokumen Keuangan'
                ]]
        ],[
            'icon' => 'fa fa-users',
            'title' => 'Kelola User',
            'url' => '/master-user',
            'route-name' => 'admin.masteruser'
        ],[
            'icon' => 'fa fa-hdd',
            'title' => 'Kelola Sistem',
            'url' => 'javascript:;',
            'caret' => true,
            'sub_menu' => [
                [
                    'url' => 'javascript:;',
                    'title' => 'Inisialisasi Kelurahan'
                ],[
                    'url' => 'javascript:;',
                    'title' => 'Pemeliharaan Data'
                ]]
        ],[
            'icon' => 'fa fa-question-circle',
            'title' => 'Bantuan',
            'url' => '/bantuan',
        ]
    ]
];
