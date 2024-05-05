@extends('layout.main')
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> Form</h4>

        <div class="col-xl">
            <div class="card mb-4">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Forms Add User</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.userpost') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label" for="basic-default-fullname">Full Name</label>
                            <input type="text" name="name" class="form-control" id="basic-default-fullname"
                                placeholder="John Doe" />
                        </div>
                        @error('name')
                            <small>{{ $message }}</small>
                        @enderror
                        <div class="mb-3">
                            <label class="form-label" for="basic-default-email">Email</label>
                            <div class="input-group input-group-merge">
                                <input type="email" name="email" id="basic-default-email" class="form-control"
                                    placeholder="john.doe" aria-label="john.doe" aria-describedby="basic-default-email2" />
                                <span class="input-group-text" id="basic-default-email2">@mail.com</span>
                            </div>
                        </div>
                        @error('email')
                            <small>{{ $message }}</small>
                        @enderror
                        <div class="mb-3">
                            <label class="form-label" for="basic-default-password">Password</label>
                            <input type="password" name="password" class="form-control" id="basic-default-password"
                                placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                aria-describedby="password" />
                        </div>
                        @error('password')
                            <small>{{ $message }}</small>
                        @enderror
                        <div class="mb-3">
                            <label class="form-label" for="basic-default-image">Avatar</label>
                            <input type="file" name="image" class="form-control" id="basic-default-image" />
                        </div>
                        @error('image')
                            <small>{{ $message }}</small>
                        @enderror
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
