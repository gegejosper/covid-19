<?php
namespace App\Exports;
use App\Patient;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Carbon\Carbon;
class PostExport implements FromQuery, WithHeadings
{
  public function __construct($type, $municipality, $start_date, $end_date)
  {
      $this->type = $type;
      $this->municipality = $municipality;
      $this->start_date = $start_date;
      $this->end_date = $end_date;
  }
  public function headings(): array
  {
      return [
          'DATABASE ID',
          'FIRST NAME',
          'LAST NAME',
          'MIDDLE NAME',
          'AGE',
          'GENDER',
          'CONTACT NUM',
          'NATIONALITY',
          'ADDRESS',
          'BARANGAY',
          'DATE EXPOSURE',
          'TRAVEL HISTORY',
          'SYMPTOMS',
          'TYPE',
          'MUNICIPALITY',
      ];
  }
  use Exportable;
  // public function collection()
  // {
  //   return Patient::all();
  // }
  public function query()
  {
        //dd($this->end_date);
        $type = $this->type;
        $org_from_date = $this->start_date;  
        $new_from_date = date("Y-m-d", strtotime($org_from_date)); 
        
        $org_to_date = $this->end_date;  
        $new_to_date = date("Y-m-d", strtotime($org_to_date)); 
        
        $startDate = Carbon::parse($new_from_date.' 00:00:00');
        $endDate = Carbon::parse($new_to_date .' 23:59:59'); 
        $get_municipality = strtoupper($this->municipality);
        if($type=="ALL" && $get_municipality != "ALL"){
            return Patient::query()
            ->where('municipality', '=', $get_municipality)
            ->whereBetween('created_at', [$startDate, $endDate]);
        }
        else if($type !="ALL" && $get_municipality == "ALL"){
          return Patient::query()
            ->where('patient_type', '=', $type)
            ->whereBetween('created_at', [$startDate, $endDate]);
        }
        else if($type == "ALL" && $get_municipality == "ALL"){
            return Patient::query()
            ->whereBetween('created_at', [$startDate, $endDate]);
        }
        else{
          return Patient::query()
                ->where('patient_type', '=', $type)
                ->whereBetween('created_at', [$startDate, $endDate])
                ->where('municipality', '=', $get_municipality);
        }   
  }
}