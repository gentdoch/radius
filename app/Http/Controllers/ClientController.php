<?php

namespace App\Http\Controllers;

use App\Models\Clients;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ClientController extends Controller
{
    public function client(Request $request)
    {
        $data = Clients::getClientsData();

        return view('data.client', compact('data', 'request'));
    }

    public function server(Request $request)
    {

        if ($request->ajax()) {

            $data = Clients::getClientsData();

            return DataTables::of($data)
                ->addColumn('service', function ($data) {
                    return '<i class="fab fa-react fa-lg text-info me-3"></i> <strong>' . $data->service . '</strong>';
                })
                ->addColumn('name', function ($data) {
                    return $data->client_name;
                })
                ->addColumn('address', function ($data) {
                    return $data->address;
                })
                ->addColumn('staff', function ($data) {
                    return '<ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                    <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                        class="avatar avatar-xs pull-up" title="' . $data->username . '">
                        <img src="' . asset('storage/avatar/' . $data->image) . '" alt="Avatar"
                            class="rounded-circle" width="100" />
                    </li>
                </ul>';
                })
                ->addColumn('status', function ($data) {
                    return '<span
                    class="badge bg-label-success me-1">' . $data->status == 1 ? 'Active' : 'Inactive' . '</span>';
                })
                ->addColumn('action', function ($data) {
                    return '<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                    data-bs-toggle="dropdown">
                    <i class="bx bx-dots-vertical-rounded"></i>
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="javascript:void(0);"><i
                            class="bx bx-edit-alt me-1"></i> Edit</a>
                    <a class="dropdown-item" href="javascript:void(0);"><i
                            class="bx bx-trash me-1"></i>
                        Delete</a>
                </div>';
                })
                ->rawColumns(['service', 'staff', 'status', 'action'])
                ->make(true);
        }



        return view('data.server', compact('request'));
    }


}
