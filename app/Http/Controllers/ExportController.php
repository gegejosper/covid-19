<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Patient;
use App\Exports\PostExport;


class ExportController extends Controller
{
    //
  public function exportExcel()
  {
    return Excel::download(new PostExport, 'patient.xlsx');
  }

  public function export_process(Request $req){
    return Excel::download(new PostExport($req->patient_type, $req->municipality, $req->fromdate, $req->todate), $req->patient_type.'_'.$req->municipality.'_'.$req->fromdate.'_'.$req->todate.'.xlsx');
    //return (new CustomMemberExport($request->type,$request->importtype))->download($request->importtype.'.csv');
  }

}
