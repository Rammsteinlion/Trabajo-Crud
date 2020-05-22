<?php

namespace App\Http\Controllers;

use Caffeinated\Shinobi\Models\Role;
use Caffeinated\Shinobi\Models\Permission;
use Illuminate\Http\Request;

class RoleController extends Controller
{

    public function __construct()
    {

    }


    public function index()
    {
        $roles = Role::paginate();
        return view('roles.index', compact('roles'));

    }

    public function create()
    {
        $permissions = Permission::get();
        return view('roles.create' , compact('permissions'));
    }


    public function store(Request $request)
    {
        //Creacion del Rol
        $role = Role::create($request->all());

        //aqui se relacionan los permisos con los roles
        $role->permissions()->sync($request->get('permissions'));

        return redirect()->route('roles.edit',$role->id)
            ->with('info','Rol Agregado con exito');
    }


    public function show(Role $role)
    {
       // dd($product->id);
        return view('roles.show', compact('role'));
    }



    public function edit(Role $role)
    {
        //Tambien se toma este metodo y se hace al momento de crear
        $permissions = Permission::get();
        return view('roles.edit', compact('role','permissions'));
    }


    public function update(Request $request, Role $role)
    {
        //actualizar rol
        $role->update($request->all());

        //aqui salvo los permisos al actualizar el rol
        $role->permissions()->sync($request->get('permissions'));

        return redirect()->route('roles.edit',$role->id)
            ->with('info','Rol Actualizado con exito');
    }



    public function destroy(Role $role)
    {
        $role->delete();
        return back()->with('info','Eliminado con Exito');

    }
}
