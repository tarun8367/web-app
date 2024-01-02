<?php
ob_start();
date_default_timezone_set("Asia/Manila");

$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();
if($action == 'login'){
	$login = $crud->login();
	if($login)
		echo $login;
}
if($action == 'login2'){
	$login = $crud->login2();
	if($login)
		echo $login;
}
if($action == 'logout'){
	$logout = $crud->logout();
	if($logout)
		echo $logout;
}
if($action == 'logout2'){
	$logout = $crud->logout2();
	if($logout)
		echo $logout;
}

if($action == 'signup'){
	$save = $crud->signup();
	if($save)
		echo $save;
}
if($action == 'save_user'){
	$save = $crud->save_user();
	if($save)
		echo $save;
}
if($action == 'update_user'){
	$save = $crud->update_user();
	if($save)
		echo $save;
}
if($action == 'delete_user'){
	$save = $crud->delete_user();
	if($save)
		echo $save;
}
if($action == 'save_event'){
	$save = $crud->save_event();
	if($save)
		echo $save;
}
if($action == 'update_event_stats'){
	$save = $crud->update_event_stats();
	if($save)
		echo $save;
}
if($action == 'delete_event'){
	$delete = $crud->delete_event();
	if($delete)
		echo $delete;
}
if($action == 'save_attendee'){
	$save = $crud->save_attendee();
	if($save)
		echo $save;
}
if($action == 'delete_attendee'){
	$delete = $crud->delete_attendee();
	if($delete)
		echo $delete;
}
if($action == 'assign_registrar'){
	$save = $crud->assign_registrar();
	if($save)
		echo $save;
}
if($action == 'update_attendee_stats'){
	$save = $crud->update_attendee_stats();
	if($save)
		echo $save;
}
ob_end_flush();
?>
