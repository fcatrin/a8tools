<?php 
include_once __DIR__.'/../include/core.php';
include_once __DIR__.'/patcherlib.php';

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

$patch = patcher_load($xexpatch);
$patched = patcher_apply($xexfile, $patch);

if ($patched) {
	file_put_contents($patchedfile, $patched);
	echo "file patched as $patchedfile";
} else {
	echo "file not patched";
}
?>