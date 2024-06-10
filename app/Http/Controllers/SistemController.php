<?php
namespace App\Http\Controllers;
use App\Models\Aturan;
use App\Models\Report;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SistemController extends Controller
{
    public function sistem(Request $request){
        $data = Aturan::all();
        $aturan = [];
        foreach($data as $a){
            if(!isset($aturan[$a->id_penyakit])){
                $aturan[$a->id_penyakit] = [];
            }
            array_push($aturan[$a->id_penyakit], $a->id_gejala);
        }

        $gejala = [];
        foreach($request->input('jawaban') as $jwb){
            if($jwb['value'] == 'ya'){
                array_push($gejala, $jwb['id_gejala']);
            }
        }

        $hasil = [];
        foreach($aturan as $key => $rules){
            $matchedGejalaCount = 0;
            foreach($gejala as $value){
                if(in_array($value, $rules)){
                    $matchedGejalaCount++;
                }
            }
            if ($matchedGejalaCount > 0) {
                $percentage = ($matchedGejalaCount / count($rules)) * 100;
                if ($percentage > 60) {
                    $hasil[$key] = $percentage;
                }
            }
        }

        $penyakit = 0;
        if(count($hasil) > 0){
            arsort($hasil);
            $penyakit = array_key_first($hasil);
        }

        Report::insert([
            'penyakit_id' => $penyakit,
            'user_id' => $request->input('no_telp'),
            'tanggal' => date('Y-m-d')
        ]);
    }
}
