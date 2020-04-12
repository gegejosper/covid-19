@extends('layout.admin')

@section('content')
<script src="{{ asset('js/jquery.min.js') }}"></script>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Patient</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Patient</li>
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
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-6"><h3 class="card-title">Completed Quarantine</h3></div>
                    </div>
                <!-- /.card-header -->
                    <div class="card-body p-0">
                            @if(Session::has('success'))
                                <div class="alert alert-success">
                                    {{ Session::get('success') }}
                                    @php
                                    Session::forget('success');
                                    @endphp
                                </div>
                            @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                <th></th>
                                <th>Full Name</th>
                                <th>Age</th>
                                <th>Gender</th>
                                <th>Address</th>
                                <th>Nationality</th>
                                <th>Date Exposure</th>
                                
                                <th>Travel History</th>
                                <th>Patient Type</th>
                                <th>Quarantine Days</th>
                                <th></th>
                                </tr>
                            </thead>
                            <tbody class="patientresult">
                                <?php $count=1;?>
                                @foreach($data_patient_array as $Patient)
                                <tr>
                                <td>{{$count}}</td>
                                <td><a href="/admin/patient/view/{{$Patient->id}}">{{strtoupper($Patient->lname)}}, {{strtoupper($Patient->fname)}} {{strtoupper($Patient->mname)}}</a></td>
                                <td>{{$Patient->age}}</td>
                                <td>{{$Patient->gender}}</td>
                                <td>{{$Patient->address}}</td>
                                <td>{{$Patient->nationality}}</td>
                                <td>{{$Patient->date_exposure}}</td>
                                
                                <td>{{$Patient->travel_history}}</td>
                                <td>{{$Patient->patient_type}}</td>
                                <td>
                                
                                <?php 
                                    date_default_timezone_set('Asia/Manila');
                                    $var = trim($Patient->date_exposure);
                                    $date1 = str_replace('/', '-', $var);
                                    $date2 = date('d-m-Y');
                                    $date1new = new DateTime($date1);
                                    $date2new = new DateTime($date2);
                                    $diff = $date1new->diff($date2new);
                                    //echo $date1." - ".$date2;
                                    echo $diff->d;
                                ?>
                                
                                </td>
                                <td>
                                    <a href="/admin/patient/complete/{{$Patient->id}}" class="btn btn-success btn-small"><i class="btn-icon-only fas fa-check"> </i></a>
                                </td>
                                </tr>
                                <?php $count++;?>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-6"><h3 class="card-title">Patient List Quarantine</h3></div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input id="search" type="text" type="search" name="search" class="form-control" placeholder="Search Patient...">
                                </div>
                            </div>
                        </div>
                        {{ csrf_field() }}
                    </div>
                <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                            @if(Session::has('success'))
                                <div class="alert alert-success">
                                    {{ Session::get('success') }}
                                    @php
                                    Session::forget('success');
                                    @endphp
                                </div>
                            @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                <th></th>
                                <th>Full Name</th>
                                <th>Age</th>
                                <th>Gender</th>
                                <th>Address</th>
                                <th>Nationality</th>
                                <th>Date Exposure</th>
                                
                                <th>Travel History</th>
                                <th>Patient Type</th>
                                
                                </tr>
                            </thead>
                            <tbody class="">
                                <?php $count=1;?>
                                @forelse($data_patient_completed as $Patient_Completed)
                                <tr>
                                <td>{{$count}}</td>
                                <td><a href="/admin/patient/view/{{$Patient_Completed->id}}">{{strtoupper($Patient_Completed->lname)}}, {{strtoupper($Patient_Completed->fname)}} {{strtoupper($Patient_Completed->mname)}}</a></td>
                                <td>{{$Patient_Completed->age}}</td>
                                <td>{{$Patient_Completed->gender}}</td>
                                <td>{{$Patient_Completed->address}}</td>
                                <td>{{$Patient_Completed->nationality}}</td>
                                <td>{{$Patient_Completed->date_exposure}}</td>
                                
                                <td>{{$Patient_Completed->travel_history}}</td>
                                <td>{{$Patient_Completed->patient_type}}</td>
                                </tr>
                                <?php $count++;?>
                                @empty
                                <tr>
                                    <td colspan="9"><em>No Records</em></td>
                                </tr>
                                @endforelse
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
    

<script type="text/javascript">
$('#search').on('keyup',function(){
  $value=$(this).val();
  $.ajax({
    type : 'get',
    url : '{{URL::to('admin/quarantine_search')}}',
    data:{'search':$value},
    success:function(data){
      $('.patientresult').html(data);
    } 
  });
})
</script> 
<script type="text/javascript">
$.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
</script>
<script src="{{ asset('js/app.js') }}"></script>
@endsection