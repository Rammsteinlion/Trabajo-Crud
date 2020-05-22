@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Productos <br>
                    @can('products.create')
                        <a href="{{ route('products.create')}}"
                         class="btn btn-primary pull-right">
                         Crear</a>
                    @endcan
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
                            @foreach ($products as $product )
                                <tr>
                                    <td>{{ $product->id }}</td>
                                    <td>{{ $product->name }}</td>
                                    <td>
                                    <!--validacion ver si el usuario tiene permiso-->
                                    @can('products.show')
                                        <a href="{{ route('products.show', $product->id) }}"
                                                class="btn btn-info">
                                                Ver
                                        </a>
                                    @endcan
                                </td>
                                <td>
                                    <!--validacion ver si el usuario tiene permiso de editar-->
                                    @can('products.edit')
                                        <a href="{{ route('products.edit', $product->id) }}"
                                                class="btn btn-dark">
                                                Editar
                                        </a>
                                    @endcan
                                </td>
                                <td>
                                    <!--validacion ver si el usuario tiene permiso de eliminar-->
                                    @can('products.destroy')
                                    {!! Form::open(['route' => ['products.destroy', $product->id],
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
                    {{ $products->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
