@extends('layout.admin')

@section('content')
<script src="{{ asset('js/jquery.min.js') }}"></script>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Persons Under Investigation</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">PUI</li>
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
                      <th>Quarantine Days</th>
                      <!-- <th>Action</th> -->
                    </tr>
                  </thead>
                  <tbody class="patientresult">
                    <?php $count=1;?>
                    @foreach($data_patient as $Patient)
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

                      $date1 = strtotime($Patient->date_exposure);
                      $date2 = strtotime(date('d/m/Y'));

                      // echo $hourDiff=floor(($date1 - $date2) / (60*60*60*60*24));
                      // $diff = abs(strtotime(trim($Patient->date_exposure)) - strtotime(date('d/m/Y')));

                      // echo $min = floor($diff / (60*60*24)); // 7

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
                      <!-- <td>
                         
                          <a href="javascript:;" class="edit-member btn btn-small btn-success" 
                          data-id="{{$Patient->id}}" 
                          data-fname="{{$Patient->fname}}"
                          data-lname="{{$Patient->lname}}"
                          data-mname="{{$Patient->mname}}"
                          data-dob="{{$Patient->dob}}"
                          data-address="{{$Patient->address}}"
                          data-gender="{{$Patient->gender}}"
                          >
                          <i class="btn-icon-only fas fa-pen"> </i></a>
                          <a href="javascript:;" class="delete-modal btn btn-danger btn-small" data-id="{{$Patient->id}}"><i class="btn-icon-only fas fa-times"> </i></a>
                      </td> -->
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
        <!-- /.row -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
<div id="member_modal" class="modal fade" id="modal-lg">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Edit Member</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label for="First Name">First Name</label>
              <input type="text" class="form-control" id="edit_fname" name="edit_fname" required>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="Middle Name">Middle Name</label>
              <input type="text" class="form-control" id="edit_mname" name="edit_mname" required>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="Last Name">Last Name</label>
              <input type="text" class="form-control" id="edit_lname" name="edit_lname" required>
            </div>
          </div>
          
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label for="Birth Date">Birth Date</label>
              <input type="date" class="form-control" id="edit_dob" name="edit_dob" required>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="Gender">Gender</label>
                <div class="row">
                  <div class="form-check col-md-6  pl-5">
                    <input class="form-check-input" type="radio" name="edit_gender" value="male" required>
                    <label class="form-check-label">Male</label>
                  </div>
                  <div class="form-check col-md-6 text-left">
                    <input class="form-check-input" type="radio" name="edit_gender" value="female" required>
                    <label class="form-check-label">Female</label>
                  </div>
                </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="Civil Status">Civil Status</label>
                <select class="form-control" name="edit_civil_status">
                    <option>Single</option>
                    <option>Married</option>
                    <option>Separated</option>
                    <option>Widowed</option>
                </select>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label for="Address">Address</label>
              <input type="text" class="form-control" id="edit_address" name="edit_address" placeholder="Address" value="{{ old('address') }}" required>
            </div>
          </div>  
        </div>
      <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script type="text/javascript">
$('#search').on('keyup',function(){
  $value=$(this).val();
  $.ajax({
    type : 'get',
    url : '{{URL::to('admin/pui_search')}}',
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