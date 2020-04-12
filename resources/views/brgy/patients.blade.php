@extends('layout.brgy')

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
                    <div class="col-md-6"><h3 class="card-title">Patients List</h3></div>
                    <!-- <div class="col-md-6">
                        <div class="input-group">
                            <input id="search" type="text" type="search" name="search" class="form-control" placeholder="Search Patient...">
                        </div>
                    </div> -->
                </div>
                {{ csrf_field() }}
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              
                <table class="table table-striped">
                  <thead>
                    <tr>
                      
                      <th>Full Name</th>
                      <th>Age</th>
                      <th>Gender</th>
                      <th>Address</th>
                      <th>Nationality</th>
                      <th>Date Exposure</th>
                      <th>Travel History</th>
                      <th>Patient Type</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody class="patientresult">
                    @foreach($data_patient as $Patient)
                    <tr>
                      <td><a href="/brgy/patient/view/{{$Patient->id}}">{{strtoupper($Patient->lname)}}, {{strtoupper($Patient->fname)}} {{strtoupper($Patient->mname)}}</a></td>
                      <td>{{$Patient->age}}</td>
                      <td>{{$Patient->gender}}</td>
                      <td>{{$Patient->address}}</td>
                      <td>{{$Patient->nationality}}</td>
                      <td>{{$Patient->date_exposure}}</td>
                      <td>{{$Patient->travel_history}}</td>
                      <td>{{$Patient->patient_type}}</td>
                      <td>
                          <a href="/admin/patient/delete/{{$Patient->id}}" class="delete-modal btn btn-danger btn-small"><i class="btn-icon-only fas fa-times"> </i></a>
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

<script type="text/javascript">
$('#search').on('keyup',function(){
  $value=$(this).val();
  $.ajax({
    type : 'get',
    url : '{{URL::to('admin/patient_search')}}',
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
<script src="{{ asset('js/member.js') }}"></script>
@endsection