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

if ($argc > 3) {
	$patchedfile = $argv[3];
} else {
	$srcfile = realpath($xexfile);
	$dir = dirname($srcfile);
	$name = basename($srcfile);
	$patchedfile = "$dir/patched_$name";
}
$patch = patcher_load($xexpatch);
$patched = patcher_apply($xexfile, $patch);

print_r($patch);

if ($patched) {
	file_put_contents($patchedfile, $patched);
	echo "file patched as $patchedfile\n\n";
} else {
	echo "file not patched\n\n";
}
?>