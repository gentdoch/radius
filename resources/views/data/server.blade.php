@extends('layout.main')
@section('css_table')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.6/css/dataTables.dataTables.css" />
@endsection
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> Clients</h4>

        <div class="card">
            <h5 class="card-header">server view</h5>
            <div class="table-responsive text-nowrap">
                {{-- <table class="table table-borderless" id="clientTable"> --}}
                <table class="display" id="serverTable" style="width: 100%">
                    <thead>
                        <tr>
                            <th>No Service</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Staff</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@section('script_table')
    <script src="https://cdn.datatables.net/2.0.6/js/dataTables.js"></script>
    <script>
        $(document).ready(function() {
            loadData();
        });

        function loadData() {
            $('#serverTable').DataTable({
                processing: true,
                pagination: true,
                responsive: false,
                serverSide: true,
                searching: true,
                ordering: true,
                ajax: {
                    url: "{{ route('admin.server') }}",
                },
                columns: [{
                        data: 'service',
                        name: 'service',
                    },
                    {
                        data: 'name',
                        name: 'name',
                    },
                    {
                        data: 'address',
                        name: 'address',
                    },
                    {
                        data: 'staff',
                        name: 'staff',
                    },
                    {
                        data: 'status',
                        name: 'status',
                    },
                    {
                        data: 'action',
                        name: 'action',
                    },
                ],
            });
        }
    </script>
@endsection
