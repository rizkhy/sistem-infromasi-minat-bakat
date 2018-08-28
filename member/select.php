<?php
if (empty($_GET['act']))
{include"beranda.php";}
else{
	switch($_GET['act']){

        case('profil'): include('profil.php');
        break;
        case('about'): include('about.php');
        break;
        case('lihat_member'): include('lihat_member.php');
        break;
        case('minat_bakat'): include('minat_bakat.php');
        break;
        case('kategori'): include('kategori.php');
        break;
        case('member_beranda'): include('member/member_beranda.php');
        break;
        case('detail_minat_bakat'): include('detail_minat_bakat.php');
        break;
        case('tambah_minat_bakat'): include('tambah_minat_bakat.php');
        break;
        case('minat_bakat_per_member'): include('minat_bakat_per_member.php');
        break;
        case('daftar_member'): include('daftar_member.php');
        break;
        case('edit_minat_bakat'): include('edit_minat_bakat.php');
        break;
        
	default:include('beranda.php');
	}
}
?>
