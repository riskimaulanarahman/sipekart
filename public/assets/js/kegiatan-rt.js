// main

// $('#getrt').on('change',function() {
//     var getrt = $('#getrt').val();
//     // alert(getrt);
//     if(getrt !== "") {
//         $('#kegiatan-rt').prop('hidden',false);
//         dataGrid.refresh();
//     } else {
//         $('#kegiatan-rt').prop('hidden',true);
//     }
// })

var store = new DevExpress.data.CustomStore({
    key: "id",
    load: function() {
        return sendRequest(apiurl + "/kegiatan-rt");
    },
    insert: function(values) {
        return sendRequest(apiurl + "/kegiatan-rt", "POST", values);
    },
    update: function(key, values) {
        return sendRequest(apiurl + "/kegiatan-rt/"+key, "PUT", values);
    },
    remove: function(key) {
        return sendRequest(apiurl + "/kegiatan-rt/"+key, "DELETE");
    },
});

function moveEditColumnToLeft(dataGrid) {
    dataGrid.columnOption("command:edit", { 
        visibleIndex: -1,
        width: 80 
    });
}
// attribute
var dataGrid = $("#kegiatan-rt").dxDataGrid({    
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
    editing: {
        useIcons:true,
        mode: "batch",
        allowAdding: true,
        allowUpdating: true,
        allowDeleting: true,
    },
    scrolling: {
        mode: "virtual"
    },
    columns: [
        {
            caption: '#',
            formItem: { 
                visible: false
            },
            width: 40,
            cellTemplate: function(container, options) {
                container.text(options.rowIndex +1);
            }
        },
        { 
            dataField: "nama_kegiatan",
            sortOrder: "asc",
            validationRules: [
                { 
                    type: "required" 
                }
            ]
        },
       
    ],
    export: {
        enabled: true,
        fileName: "master-user",
        excelFilterEnabled: true,
        allowExportSelectedData: true
    },
    onInitNewRow: function(e) {  
        e.data.bulan = new Date().getMonth()+1;
        e.data.tahun = new Date().getFullYear();
    } ,
    onContentReady: function(e){
        moveEditColumnToLeft(e.component);
    },
    onEditorPreparing: function(e) {

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
        })
    },
}).dxDataGrid("instance");