@extends('layout.main')
@section('css_table')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.6/css/dataTables.dataTables.css" />
@endsection
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> Clients</h4>

        <div class="card">
            <h5 class="card-header">client view</h5>
            <div class="table-responsive text-nowrap">
                {{-- <table class="table table-borderless" id="clientTable"> --}}
                <table class="display" id="clientTable" style="width: 100%">
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
                        @foreach ($data as $c)
                            <tr>
                                <td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>{{ $c->service }}</strong>
                                </td>
                                <td>{{ $c->client_name }}</td>
                                <td>{{ $c->address }}</td>
                                <td>
                                    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                                            class="avatar avatar-xs pull-up" title="{{ $c->username }}">
                                            <img src="{{ asset('storage/avatar/' . $c->image) }}" alt="Avatar"
                                                class="rounded-circle" width="100" />
                                        </li>
                                    </ul>
                                </td>
                                <td><span
                                        class="badge bg-label-success me-1">{{ $c->status == 1 ? 'Active' : 'Inactive' }}</span>
                                </td>
                                <td>
                                    <div class="dropdown">
                                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                            data-bs-toggle="dropdown">
                                            <i class="bx bx-dots-vertical-rounded"></i>
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                    class="bx bx-edit-alt me-1"></i> Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);"><i
                                                    class="bx bx-trash me-1"></i>
                                                Delete</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
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
            $('#clientTable').DataTable();
        });
    </script>
@endsection
