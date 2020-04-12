@extends('layout.admin')

@section('content')
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
          <div class="col-md-4">
          <div class="card">
              <div class="card-header">
                <h3 class="card-title">Patient Record Details</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="{{asset('img/profile.png')}}" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">{{$data_patient->lname}}, {{$data_patient->fname}} {{$data_patient->mname}}</h3>

               

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>Date of Exposure</b> <a class="float-right">{{$data_patient->date_exposure}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Travel History</b> <a class="float-right">{{$data_patient->travel_history}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Contact Number</b> <a class="float-right">{{$data_patient->contact_num}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Address</b> <a class="float-right">{{$data_patient->address}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Barangay</b> <a href="/admin/report/brgy/{{$data_patient->brgy}}" class="float-right">{{$data_patient->brgy}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Age</b> <a class="float-right">{{$data_patient->age}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Gender</b> <a class="float-right">{{$data_patient->gender}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Travel History</b> <a class="float-right">{{$data_patient->travel_history}}</a>
                  </li>
                  <li class="list-group-item">
                    <b>Patient Type</b> <a href="/admin/report/type/{{$data_patient->patient_type}}" class="float-right">{{$data_patient->patient_type}}</a>
                  </li>
                </ul>
                <a href="/admin/patient/dead/{{$data_patient->id}}" class="btn btn-sm btn-danger"> Mark As Dead</a> 
                <a href="/admin/patient/positive/{{$data_patient->id}}" class="btn btn-sm btn-success"> Mark as Positive</a> 
                <a href="/admin/patient/complete/{{$data_patient->id}}" class="btn btn-sm btn-warning"> Complete Quanrantine</a>
                <a href="/admin/patient/recovered/{{$data_patient->id}}" class="btn btn-sm btn-warning"> Mark as Recovered</a>
  
              </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Patient Record Update</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              @if(Session::has('success'))
                  <div class="alert alert-success">
                      {{ Session::get('success') }}
                      @php
                      Session::forget('success');
                      @endphp
                  </div>
              @endif
                <form action="{{route('patient_update')}}" method="post">
                  @csrf
                  <div class="row">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="Patient Type">Patient Type</label>
                          <select class="form-control" name="patient_type">
                              <option>PUI</option>
                          </select>
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
                  
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="Symptoms">Symptoms</label>
                          <textarea name="symptoms" id="symptoms" cols="30" rows="3" class="form-control">{{$data_patient->symptoms}}
                          </textarea>
                      </div>
                    </div>
                  </div>
                  <input type="hidden" name="patient_id" value="{{$data_patient->id}}">
                  <button class="btn btn-sm btn-info" type="submit">Save</button>
                </form>
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