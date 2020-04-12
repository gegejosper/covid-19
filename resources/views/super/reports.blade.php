@extends('layout.superadmin')

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Reports</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Reports</li>
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
        <div class="row no-print">
          <div class="card-body">
            <form action="{{route('filter_report_super')}}">
              @csrf
              <div class="row">
                  <div class="col-md-2">
                    <div class="form-group">
                      <label for="Patient Type">Patient Type</label>
                      <div class="form-group">
                          <select class="form-control" name="patient_type">
                              <option>ALL</option>
                              <option>PUI</option>
                              <option>PUM</option>
                              <option>COMPLETED</option>
                              <option>POSITIVE</option>
                              <option>DEAD</option>
                              <option>RECOVERED</option>
                          </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group">
                      <label for="Municipality">Municipality</label>
                        <select class="form-control" name="municipality">
                        <option>ALL</option>
                          <?php 
                            for($i =0;  $i< count($municipality); $i++){
                              echo "<option>".strtoupper($municipality[$i])."</option>";
                            }
                        ?>
                        </select>
                        
                    </div>
                  </div>
                  
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>From:</label>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="far fa-calendar-alt"></i>
                            </span>
                          </div>
                          <input type="date" style="" name="fromdate" id="fromdate" class="form-control" required>
                        </div>
                      <!-- /.input group -->
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>To:</label>

                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="far fa-calendar-alt"></i>
                            </span>
                          </div>
                          <input type="date" style="" name="todate" id="todate" class="form-control" required>
                        </div>
                      <!-- /.input group -->
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group" style="padding-top:30px;">
                    
                      <button type="submit" class="form-control btn btn-info btn-sm">Filter</button>
                    </div>
                  </div>
                </div>
              </div>
            </form>
        </div>
        <div class="row">
        <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Patients List - {{count($data_patient)}} 

               @if(isset($type))
                 -  {{$type}}
                @endif

                @if(isset($get_municipality))
                 | {{$get_municipality}}
                @endif
                @if(isset($startDate))
                 | {{$startDate->format('d/m/Y')}} - {{$endDate->format('d/m/Y')}}
                @endif
                </h3>
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
                      <th>Date</th>
                      <th>Full Name</th>
                      <th>Age</th>
                      <th>Gender</th>
                      <th>Address</th>
                      
                      <th>Date Exposure</th>
                      
                      <th>Travel History</th>
                      <th>Patient Type</th>
                      <th>Quarantine Days</th>
                      <!-- <th>Action</th> -->
                    </tr>
                  </thead>
                  <tbody>
                    <?php $count=1;?>
                    @foreach($data_patient as $Patient)
                    <tr>
                      <td>{{$count}}</td>
                      <td><?php 
                      if($Patient->created_at != null ) {
                        echo $Patient->created_at->format('m/d/Y');
                      }
                      
                      ?>
                      </td>
                      <td>{{strtoupper($Patient->lname)}}, {{strtoupper($Patient->fname)}} {{strtoupper($Patient->mname)}}</td>
                      <td>{{$Patient->age}}</td>
                      <td>{{$Patient->gender}}</td>
                      <td>{{$Patient->address}}</td>
                      
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
        <button class="btn btn-info btn-lg no-print" onclick="window.print();"><i class="fa fa-print"></i> Print</button>
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
      
    </section>
    
@endsection