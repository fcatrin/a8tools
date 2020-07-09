<?php 

include_once __DIR__.'/../../../include/core.php';
include_once __DIR__.'/../../../include/dumper.php';

$xex = dumper_xex_create();
$addr_start = 0xd800;
$addr_end   = 0xdc7f;
dumper_xex_add_header($xex, $addr_start, $addr_end);

$header = dumper_pack($xex);
$body = file_get_contents('stac_loader_unlocked.bin');

file_put_contents('stac_loader.xex', $header.$body);

?>