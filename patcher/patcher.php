<?php 

if (php_sapi_name() != 'cli') {
	die();
}

if ($argc < 3) {
	$appname = $argv[0];
	echo "Usage: $appname original.xex xexpatch [destination.xex]\n";
	die();
}

$xexfile     = $argv[1];
$xexpatch    = $argv[2];
$patchedfile = $argc < 4 ? "patched_$xexfile" : $argv[3];



?>