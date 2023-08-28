<?php
namespace App\Http\Controllers\Custom;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Personne;

class CustomFunction{
	
	public static function getMandatementPage($my_request){
		$entete=DB::table('parametre_sys')->first();
		$entete->entete=self::getFormat($entete->entete);
		$signataire=DB::table('signataire')->join('fonction','signataire.fonction_id','=','fonction.id')->first();
		//$signataire->nomsignataire="<br>".$signataire->nomsignataire."<br><br><br><br><br>".$signataire->distinction;
				
		$pays=DB::select("SELECT * FROM pays");
		$bourses=DB::select("SELECT * FROM bourse");
		$universites=DB::table("universite")->orderBy('nom_universite','ASC')->get();
		$structures=DB::table("structure_universite")->orderBy('nom_structure','ASC')->get();
		$filieres=DB::table("filiere")->orderBy('libelle_filiere','ASC')->get();
		$niveaux=DB::select("SELECT * FROM niveau_etude");
		$attributions=DB::table("type_attribution")->where('id',1)->get();
		$attributions2=DB::table("type_attribution")->where('id','<>',1)->get();
		$nature_bourses=DB::select("SELECT * FROM nature_bourse");
		$sexes=DB::select("SELECT DISTINCT(sexe) FROM candidat");
		$mode_paiements=DB::table("mode_paiement")->get();
		$banques=DB::table("banque")->get();
		$candidats=DB::select("SELECT * FROM candidat");
		$dossiers=DB::select("SELECT * FROM dossier");
		$annees=DB::table("annee_academique")->orderBy('id','DESC')->get();
		$type_dossiers=DB::select("SELECT * FROM type_dossier");
		$type_element_bourse=DB::table("type_element_bourse")->where('type_element_bourse.periodicite','=','PONCTUEL')
															 ->get();
		$all_type_element_bourse=DB::table("type_element_bourse")->get();
		$mois=DB::table("mois")->get();
		$type_ajustements=DB::table('type_ajustement')->get();
		$alertes=DB::table('alerte')->where('lu',0)->get();
															// dd($mois);
		return compact('my_request','pays','bourses','universites','filieres','niveaux','attributions','attributions2','sexes','entete','signataire','candidats','dossiers','structures','annees','type_dossiers','nature_bourses','mode_paiements','banques','type_element_bourse','all_type_element_bourse','mois','type_ajustements','alertes');
	}
	
	public static function add_alerte($content,$gravite)
	{
		
		$dossier= DB::table('alerte')->insert([			
					"content"=>$content,
					"gravite"=>$gravite,
					"lu"=>0,
			]);
	}
	
	public function add_dossier_inscription($request)
	{
		$this->add_dossier($request);
		
	}
	public static function equal($val1,$val2)
	{
		if($val1==$val2)
			return true;
		else
			return false;
		
	}
	public static function int2boolean($val)
	{
		if($val==1)
			return true;
		else
			return false;
	}
	
	public static function getFormat($mot)
	{
		$ch='';
		$taille=strlen($mot);
		for($i=0; $i<$taille-1;$i++)
		{
			$k=$i+1;
			if($mot[$i]=='-' && $mot[$k]!='-' && $k<$taille)
			{
				$ch=$ch."</br>";
			}
			elseif($mot[$k]=='-' && $mot[$i]!='-' && $k<$taille)
			{
				$ch=$ch."</br>";
			}
			else
			{
				$ch=$ch.$mot[$i];
			}
			
		}
		
		return $ch;
		
	}
	public static function uploadFichier($var,$dossier,$rename)
	{
		$date=date_create();
		$date=date_timestamp_get($date);
		$file = $var;
		$extension=$file->getClientOriginalExtension();
		//$filename=$file->getClientOriginalName();
		$filename=$dossier.$rename.$date.".".$extension;
		$size=$file->getSize();
		$mimeType=$file->getMimeType();
		$file->move($dossier,$filename);
		return $filename;
	}
	
	public static function previousPage($message)
	{
		echo "<script>alert('".$message."');history.go(-1);</script>";
	}
	
	public static function InsertPaiementPeriodique($boursier_id,$debut_periode,$fin_periode,$nombre,$element_bourse_id,$net_a_payer,$annee_academique,$niveau_etude)
	{
		if($net_a_payer>=0)
		{
			if($nombre<=1)
			{
			
				$fin_periode=$debut_periode;
			}
			return DB::table('paiement_periodique')->insertGetId([						
							"boursier_id"=>$boursier_id,
							"debut_periode"=>$debut_periode,
							"fin_periode"=>$fin_periode,
							"nombre"=>$nombre,
							"net_a_payer"=>$net_a_payer,
							"element_bourse_id"=>$element_bourse_id,
							"annee_academique_id"=>$annee_academique,
							"niveau_etude_id"=>$niveau_etude,
					]);
		}
	}
	public static function UpdatePaiementPeriodique($id,$boursier_id,$debut_periode,$fin_periode,$nombre,$element_bourse_id,$net_a_payer,$annee_academique,$niveau_etude)
	{
		if($net_a_payer>0)
		{
			if($nombre<=1)
			{
			
				return null;
			}
			return DB::table('paiement_periodique')->where('id',$id)->update([						
							"boursier_id"=>$boursier_id,
							"debut_periode"=>$debut_periode,
							"fin_periode"=>$fin_periode,
							"nombre"=>$nombre,
							"net_a_payer"=>$net_a_payer,
							"element_bourse_id"=>$element_bourse_id,
							"annee_academique_id"=>$annee_academique,
							"niveau_etude_id"=>$niveau_etude,
					]);
		}
	}
	
	public static function positive($nombre)
	{
		if($nombre<0)
		{
			return 0;
		}
		return $nombre;
	}
}


?>