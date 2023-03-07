<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KlubController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_klub = \App\Klub::all();
        return view('klub.index',['data_klub' => $data_klub]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        \App\Klub::create($request->all());
        return redirect('/klub')->with('well done','Data Berhasil Diinput');
    }

    public function profile($id)
    {
        $klub = \App\Klub::find($id);
        return view('klub.profile',['klub' => $klub]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $klub = \App\Klub::find($id);
        return view('klub.edit',['klub' => $klub]);
    }

    public function delete($id)
    {
        $klub = \App\Klub::find($id);
        $klub->delete();
        return redirect('/klub')->with('well done','Data Berhasil Dihapus');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $klub = \App\Klub::find($id);
        $klub->update($request->all());
        if($request->hasFile('logo'))
        {
            $request->file('logo')->move('images/',$request->file('logo')->getClientOriginalName());
            $klub->logo = $request->file('logo')->getClientOriginalName();
            $klub->save();
        }
        return redirect('/klub')->with('well done','Data Berhasil Diupdate');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
