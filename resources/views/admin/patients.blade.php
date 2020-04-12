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
            @if(Session::has('success'))
                <div class="alert alert-success">
                    {{ Session::get('success') }}
                    @php
                    Session::forget('success');
                    @endphp
                </div>
            @endif
            @if(Session::has('error'))
                <div class="alert alert-warning">
                    {{ Session::get('error') }}
                    @php
                    Session::forget('error');
                    @endphp
                </div>
            @endif
            <form action="{{route ('add_patient') }}" method="POST">
              @csrf
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Add Patient</h3>
                </div>
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="First Name">First Name</label>
                        <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" value="{{ old('fname') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Middle Name">Middle Name</label>
                        <input type="text" class="form-control" id="mname" name="mname" placeholder="Middle Name" value="{{ old('mname') }}">
                      </div>
                      
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Last Name">Last Name</label>
                        <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" value="{{ old('lname') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                    <div class="form-group">
                      <label for="Age">Age</label>
                      <input type="number" class="form-control" id="age" name="age" required>
                    </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Gender">Gender</label>
                        <div class="form-group">
                         
                            <select class="form-control" name="gender">
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3">
                    <div class="form-group">
                        <label for="Contact Number">Contact Number</label>
                        <input type="text" class="form-control" id="contact_num" name="contact_num" placeholder="Contact Number" value="{{ old('contact_num') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="Address" value="{{ old('address') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Barangay">Barangay</label>
                          <select class="form-control" name="brgy">
                            
                            <?php 
                              foreach($brgy as $bg) {
                                  foreach($bg as $barangay){
                                      echo "<option>".strtoupper($barangay)."</option>";
                                  }
                              }
                            ?>
                          </select>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Date Exposure">Date Exposure</label>
                        <input type="date" class="form-control" id="date_exposure" name="date_exposure" placeholder="mm/dd/yyyy" value="{{ old('date_exposure') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Nationality">Nationality</label>
                        <input type="text" class="form-control" id="nationality" name="nationality" placeholder="Nationality" value="{{ old('nationality') }}" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Patient Type">Patient Type</label>
                          <select class="form-control" name="patient_type">
                              <option>PUM</option>
                              <option>PUI</option>
                          </select>
                      </div>
                      
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="Travel History">Travel History</label>
                        <textarea name="travel_history" id="travel_history" cols="30" rows="2" class="form-control" required></textarea>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="Symptoms">Symptoms</label>
                          <textarea name="symptoms" id="symptoms" cols="30" rows="2" class="form-control" required></textarea>
                      </div>
                    </div>
                  </div>
                  <input type="hidden" class="form-control" id="municipality" name="municipality"  value="{{ $get_municipality->municipality }}" required>
                  <button type="submit" class="btn btn-md btn-info"> <i class="fas fa-save"></i> Save</button>
                </div>
              </form>
            </div>
          </div>
        <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <div class="row">
                    <div class="col-md-6"><h3 class="card-title">Patients List</h3></div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <input id="search" type="text" type="search" name="search" class="form-control" placeholder="Search Patient...">
                        </div>
                    </div>
                </div>
                {{ csrf_field() }}
              </div>
              <!-- /.card-header -->
              <div class="card-body  table-responsive p-0">
              
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
                      <td><a href="/admin/patient/view/{{$Patient->id}}">{{strtoupper($Patient->lname)}}, {{strtoupper($Patient->fname)}} {{strtoupper($Patient->mname)}}</a></td>
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