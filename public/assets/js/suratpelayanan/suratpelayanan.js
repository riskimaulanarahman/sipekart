$(document).ready(function(){
    role = $('.roleuser').val();

    var d = new Date();
    var store = new DevExpress.data.CustomStore({
        key: "id_surat_pelayanan",
        load: function() {
            return sendRequest(apiurl + "/surat-pelayanan");
        },
        insert: function(values) {
            return sendRequest(apiurl + "/surat-pelayanan", "POST", values);
        },
        update: function(key, values) {
            return sendRequest(apiurl + "/surat-pelayanan/"+key, "PUT", values);
        },
        remove: function(key) {
            return sendRequest(apiurl + "/surat-pelayanan/"+key, "DELETE");
        }
    });
    
    function moveEditColumnToLeft(dataGrid) {
		dataGrid.columnOption("command:edit", { 
			visibleIndex: -1,
			width: 80 
		});
    }

    var id = {},
        popup = null,
        popupOptions = {
            width: 500,
            height: 450,
            contentTemplate: function() {
                return $("<div />").append(
                    $("<p>Title: <span>" + title + "</span></p>"),
                    $("<div>").attr("id", "formupload").dxFileUploader({
                        uploadMode: "useButtons",
                        name: "file",
                        uploadUrl: "/api/upload-berkas/"+id+"/suratpelayanan",
                        accept: "image/*,application/pdf,application/msword,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                        onUploaded: function (e) {						
                            dataGrid.refresh();
                        }
                    })
                );
            },
            showTitle: true,
            title: "Upload Form",
            dragEnabled: false,
            closeOnOutsideClick: true
    };

    var showUpload = function(data,lampiran) {
        id = data;
        if(lampiran !== null) {
            
            title = lampiran;
        } else {
            title = "belum ada lampiran";
        }

        console.log(id);

        if(popup) {
            popup.option("contentTemplate", popupOptions.contentTemplate.bind(this));
        } else {
            popup = $("#popup").dxPopup(popupOptions).dxPopup("instance");
        }

        popup.show();
    };

        var dataGrid = $("#grid-suratpelayanan").dxDataGrid({     
            dataSource: store,
            allowColumnReordering: true,
            allowColumnResizing: true,
            columnsAutoWidth: true,
            columnMinWidth: 80,
            wordWrapEnabled: true,
            showBorders: true,
            filterRow: { visible: true },
            filterPanel: { visible: true },
            headerFilter: { visible: true },
            selection: {
                mode: "multiple"
            },
            columnFixing: { 
                enabled: true
            },
            editing: {
                useIcons:true,
                mode: "popup",
                allowAdding:  (role=="admin" || role == "supervisor")?true:false,
                allowUpdating: (role=="admin" || role == "supervisor")?true:false,
                allowDeleting: false
            },
            scrolling: {
                mode: "infinite"
            },
            columns: [
                {
                    caption: '#',formItem: {visible:false},width:40,
                    fixed: true,
                    cellTemplate:function(container,options) {
                        container.text(options.rowIndex +1);
                    }
                },{
                    caption: 'Tambah/Edit Berkas',
                    visible: (role=="admin" || role == "supervisor")?true:false,
                    formItem: {visible:false},
                    fixed: true,
                    editorOptions: {
                        disabled: true
                    },
                    cellTemplate: function(container, options) {
            
                    $('<button class="btn btn-danger btn-xs">Upload</button>').addClass('dx-button').on('dxclick', function(evt) {
                        evt.stopPropagation();
                            showUpload(options.data.id_surat_pelayanan,options.data.lampiran);
                    }).appendTo(container);
                    
                    }
                },{ 
                    dataField: "nomor_surat",
                    fixed: true,
                    width: 150,
                },
                { 
                    caption: "nama jenis surat pelayanan",
                    dataField: "nama_jenis_surat_pelayanan",
                    width: 250,
                    editorType: "dxSelectBox",
                    editorOptions: {
                        dataSource: listSuratpelayanan,  
                        valueExpr: 'nama_jenis_surat_pelayanan',
                        displayExpr: 'nama_jenis_surat_pelayanan',
                    },
                },{ 
                    dataField: "tanggal_surat",
                    width: 150,
                    sortIndex: 0, sortOrder: "desc", //tambah
                    dataType:"date", format:"dd-MM-yyyy",
                },{ 
                    dataField: "nama_pejabat_pembuat",
                    width: 150,
                },{ 
                    dataField: "jabatan",
                    width: 150,
                },{ 
                    dataField: "nama_lengkap_penduduk",
                    width: 150,
                },{ 
                    dataField: "tempat_lahir",
                    width: 150,
                },{ 
                    dataField: "tanggal_lahir",
                    width: 150,
                    dataType:"date", format:"dd-MM-yyyy",
                },{ 
                    dataField: "nik_kependudukan",
                    width: 150,
                },{ 
                    dataField: "nomor_kk",
                    width: 150,
                },{ 
                    dataField: "jenis_kelamin",
                    width: 150,
                },{ 
                    dataField: "keterangan_jenis_pekerjaan",
                    width: 150,
                },{ 
                    dataField: "kewarganegaraan",
                    width: 150,
                },{ 
                    dataField: "keterangan_agama",
                    width: 150,
                },{ 
                    dataField: "keterangan_status_kawin",
                    width: 150,
                },{ 
                    dataField: "alamat",
                    width: 150,
                },{ 
                    dataField: "no_rt",
                    width: 150,
                },{ 
                    dataField: "nama_kelurahan_penduduk",
                    width: 150,
                },{ 
                    dataField: "nama_kecamatan_penduduk",
                    width: 150,
                },{ 
                    dataField: "dasar_1",
                    width: 150,
                },{ 
                    dataField: "dasar_2",
                    width: 150,
                },{ 
                    dataField: "dasar_3",
                    width: 150,
                },{ 
                    dataField: "maksud_1",
                    width: 150,
                },{ 
                    dataField: "maksud_2",
                    width: 150,
                },{ 
                    dataField: "maksud_3",
                    width: 150,
                },{ 
                    dataField: "maksud_4",
                    width: 150,
                },{ 
                    dataField: "lampiran",
                    width: 150,
                    formItem: {visible:false},
                    fixed: true,
                    fixedPosition: "right",
                    editorOptions: {
                        disabled: true
                    },
                    cellTemplate: function(container, options) {
            
                        $('<a href="/upload/'+options.data.lampiran+'" target="_blank">'+options.data.lampiran+'</a>').addClass('dx-link').appendTo(container);
                        
                    }
                },
                
            ],
            export: {
                enabled: true,
                fileName: "surat-pelayanan",
                excelFilterEnabled: true,
                allowExportSelectedData: true
            },
            onContentReady: function(e){
                moveEditColumnToLeft(e.component);
            },
            onInitNewRow: function (e) {
                    // console.log(e.data.tanggal_lahir);
            },
            onToolbarPreparing: function(e) {
                dataGrid = e.component;
        
                e.toolbarOptions.items.unshift({						
                    location: "after",
                    widget: "dxButton",
                    options: {
                        hint: "Refresh Data",
                        icon: "refresh",
                        onClick: function() {
                            dataGrid.refresh();
                        }
                    }
                },
                )
            },
            onSelectionChanged: function(data) {
                deleteButton.option("disabled", !data.selectedRowsData.length);
                // selectedItems = data.selectedRowsData;
                // disabled = !selectedItems.length;
            }, 
        }).dxDataGrid("instance");
    

    var deleteButton = $("#gridDeleteSelected").dxButton({
        text: "Delete Selected Records",
        height: 34,
        disabled: true,
        onClick: function () {
            var result = DevExpress.ui.dialog.confirm("Are you sure you want to delete selected?", "Delete row");
            result.done(function (dialogResult) {
                if (dialogResult){
                    $.each(dataGrid.getSelectedRowKeys(), function() {
                        store.remove(this);
                    });
                    dataGrid.refresh();
                }
            });
            
        }
    }).dxButton("instance");


});