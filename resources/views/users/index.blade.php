@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Usuarios
                </div>

                <div class="card-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th>Nombre</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user )
                                <tr>
                                    <td>{{ $user->id }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td width="12px">
                                    <!--validacion ver si el usuario tiene permiso-->
                                    @can('users.show')
                                        <a href="{{ route('users.show', $user->id) }}"
                                                class="btn btn-info">
                                                Ver
                                        </a>
                                    @endcan
                                </td>
                                <td>
                                    <!--validacion ver si el usuario tiene permiso de editar-->
                                    @can('users.edit')
                                        <a href="{{ route('users.edit', $user->id) }}"
                                                class="btn btn-dark">
                                                Editar
                                        </a>
                                    @endcan
                                </td>
                                <td>
                                    <!--validacion ver si el usuario tiene permiso de eliminar-->
                                    @can('users.destroy')
                                    {!! Form::open(['route' => ['users.destroy', $user->id],
                                     'method' => 'DELETE']) !!}
                                        <button class="btn btn-danger">
                                            Eliminar
                                            </button>
                                     {!! Form::close() !!}
                                    @endcan
                                </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $users->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
