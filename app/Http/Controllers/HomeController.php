<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class HomeController extends Controller
{
    public function dashboard()
    {
        return view('dashboard');

        // return abort(403);
    }
    public function user()
    {
        $data = User::get();

        return view('user', compact('data'));
    }

    public function useradd()
    {
        return view('useradd');
    }

    public function userpost(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg|max:2048',
        ]);

        if ($validator->fails())
            return redirect()->back()->withInput()->withErrors($validator);

        $image = $request->file('image');
        $filename = date('Y-m-d') . $image->getClientOriginalName();
        $path = 'avatar/' . $filename;

        Storage::disk('public')->put($path, file_get_contents($image));

        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['password'] = Hash::make($request->password);
        $data['image'] = $filename;

        User::create($data);

        return redirect()->route('admin.user');
    }

    public function useredit(Request $request, $id)
    {
        $data = User::find($id);

        return view('useredit', compact('data'));
    }

    public function userupdate(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'nullable',
        ]);

        if ($validator->fails())
            return redirect()->back()->withInput()->withErrors($validator);

        $data['name'] = $request->name;
        $data['email'] = $request->email;

        if ($request->password) {

            $data['password'] = Hash::make($request->password);
        }

        User::whereId($id)->update($data);

        return redirect()->route('admin.user');
    }

    public function userdelete(Request $request, $id)
    {
        $data = User::find($id);

        if ($data) {
            $data->delete();
        }

        return redirect()->route('admin.user');
    }
}
