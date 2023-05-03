<?php

//Include de las conexiones

include_once("conexion/connection.php");
include_once("fpdf/fpdf.php");

class PDF extends FPDF{
    
    function header()
{


    $this->SetFont('times','B',13);
    $this->SetFillColor(238,229,233);
    $this->Cell(60);
    $this->Cell(80,10,'Lista de profesores',1,1,'C',true);
    $this->SetFont('Arial','I',10);
    $this->Cell(200,7,utf8_decode("del Instituto Universitario Jesús Obrero"),0,0,'C');

    $this->Image('img/logo.png',180,0,25);
    $this->Image('img/iujo.png',5,0,50);

    $this->Ln(10);
    
    
}


function Footer()
{

$this->SetY(-20);

$this->SetFont('Arial','I',8);

$this->Cell(0,10,utf8_decode("Página ").$this->PageNo().'/{nb}',0,1,'C');
$this->Cell(0,0,utf8_decode("Reporte hecho por la administración para mantener orden y llevar conteo de cada profesor de la institución."),0,0,'C');
$this->Cell(-190,10,utf8_decode("Todos los derechos reservados | Abraham Hernández"),0,1,'C');

}
}

$db = new dbObj();

$connString =  $db->getConnstring();
$display_heading = array('id'=>'ID', 'nombre_profesor'=> 'Nombre', 'edad_profesor'=> 'Edad','cedula_profesor'=> 'Cédula','annos_servicio'=> 'Años de Servicio');

$result = mysqli_query($connString, "SELECT id, nombre_profesor, edad_profesor, cedula_profesor, annos_servicio FROM profesores") or die("database error:". mysqli_error($connString));
$header = mysqli_query($connString, "SHOW columns FROM profesores");

$pdf = new PDF();


$pdf->AddPage();
$pdf->SetFont('helvetica',',',8);
$pdf->Cell(-6);
$pdf->Cell(38,7,utf8_decode("Fecha de emisión del reporte:"),0,0);
$pdf->SetTextColor(97,97,97);
$pdf->Cell(116,7,utf8_decode(date("d/m/y", strtotime("05/03/2023"))." ".date("h:s A")),0,0,'L');
$pdf->Ln();
$pdf->SetAutoPageBreak(20, 15);
$pdf->SetTextColor(255,255,255);
$pdf->AliasNbPages();
$pdf->SetFont('Arial','B',11);
$pdf->Cell(-5);
$pdf->SetFillColor(39,39,39);


foreach($header as $heading) {
$pdf->Cell(40,12,utf8_decode($display_heading[$heading['Field']]),1,0,'C',true);
}
foreach($result as $row) {
$pdf->SetTextColor(0,0,0);
$pdf->SetFillColor(200,200,200);
$pdf->Ln();
$pdf->Cell(-5);
foreach($row as $column)
$pdf->Cell(40,12,$column,1,0,'C',true);
}

$pdf->Output("I","lista_profesores_iujo.pdf",true);


?>