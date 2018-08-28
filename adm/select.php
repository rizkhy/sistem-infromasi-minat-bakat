<?php
if (empty($_GET['act']))
{include"beranda.php";}
else{
	switch($_GET['act']){

        case('komentar'): include('komentar.php');
        break;
        case('data_minat_bakat'): include('data_minat_bakat.php');
        break;
        case('tambah_minat_bakat'): include('tambah_minat_bakat.php');
        break;
        case('tambah_member'): include('tambah_member.php');
        break;
        case('edit_minat_bakat'): include('edit_minat_bakat.php');
        break;
        case('edit_member'): include('edit_member.php');
        break;
        case('data_member'): include('data_member.php');
        break;
        case('kategori'): include('kategori.php');
        break;
        
	default:include('beranda.php');
	}
}
?>
