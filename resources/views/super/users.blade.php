@extends('layout.superadmin')

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Members</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Members</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-md-4">
            <form action="{{route ('add_user_municipality') }}" method="POST">
              @csrf
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Add User</h3>
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="Full Name">Full Name</label>
                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Full Name" value="{{ old('fullname') }}" required>
                  </div>
                  
                  <div class="form-group">
                    <label for="Username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="{{ old('username') }}" required>
                    @error('username')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </div>
                  <div class="form-group">
                      <label for="Barangay">Municipality</label>
                        <select class="form-control" name="municipality">
                            <?php 
                            $municipality = ['AURORA', 'BAYOG', 'DIMATALING', 'DINAS', 'DUMALINAO','DUMINGAG', 'GUIPOS', 'JOSEFINA', 'KUMALARANG', 'LABANGAN',
                              'LAKEWOOD', 'LAPUYAN', 'MAHAYG', 'MARGOSATUBIG', 'MIDSALIP', 'MOLAVE', 'PITOGO', 'RAMON MAGSAYSAY', 'SAN MIGUEL', 'SAN PABLO', 'SOMINOT', 'TABINA',
                              'TAMBULIG', 'TIGBAO', 'TUKURAN', 'VINCENZO SAGUN'];
                            for($i =0;  $i< count($municipality); $i++){
                              echo "<option>".strtoupper($municipality[$i])."</option>";
                            }
                            ?>
                        </select>
                        
                    </div>
                  <div class="form-group">
                    <label for="Password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" value="{{ old('password') }}">
                  </div>
                  <div class="form-group">
                    <label for="Email">Email</label>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </div>
                  <!-- <div class="form-group">
                    <label for="profilepic">Profile Pic</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="profilepic">
                        <label class="custom-file-label" for="profilepic">Choose file</label>
                      </div>
                    </div>
                  </div> -->
                  <button type="submit" class="btn btn-md btn-info"> <i class="fas fa-save"></i> Save</button>
                </div>
              </form>
            </div>
          </div>
        <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Users List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-2">
              @if(Session::has('success'))
                  <div class="alert alert-success">
                      {{ Session::get('success') }}
                      @php
                      Session::forget('success');
                      @endphp
                  </div>
              @endif

              @if(Session::has('warning'))
                  <div class="alert alert-warning">
                      {{ Session::get('warning') }}
                      @php
                      Session::forget('warning');
                      @endphp
                  </div>
              @endif
              <table class="table table-striped" id="table">
                    <thead>
                    <tr>
                
                        <th> Name</th>
                        <th> Username</th>
                        <th> Municipality </th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($data_user as $User)
                    <tr class="item{{$User->user->id}}">
                       
                        <td>{{$User->user->name}}</td>
                        <td>{{$User->user->username}}</td>
                        <td>{{$User->municipality}}</td>
                    
                        <td class='td-actions'>
                            <a href="/super/user/delete/{{$User->user->id}}" class='delete-modal btn btn-danger btn-small' data-id='{{$User->user->id}}'><i class='fa fa-times'></i></a>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
@endsection