@extends('layout.superadmin')

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Export</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Export</li>
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
            <form action="{{route('export_process')}}" method="POST">
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
                    
                      <button type="submit" class="form-control btn btn-info btn-sm">Export Data</button>
                    </div>
                  </div>
                </div>
              </div>
            </form>
        </div>
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
      
    </section>
    
@endsection