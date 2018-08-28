<?php
if (empty($_GET['act']))
{include"beranda.php";}
else{
	switch($_GET['act']){

        case('profil'): include('profil.php');
        break;
        case('about'): include('about.php');
        break;
        case('minat_bakat'): include('minat_bakat.php');
        break;
        case('kategori'): include('kategori.php');
        break;
        case('detail_minat_bakat'): include('detail_minat_bakat.php');
        break;
        
	default:include('beranda.php');
	}
}
?>
