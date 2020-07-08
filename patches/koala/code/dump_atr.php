<?php 

include_once __DIR__.'/../../include/core.php';
include_once __DIR__.'/../../include/dumper.php';

// just a test using a snapshot from memory

$addr_start = 0x2000;
$addr_end   = 0x5ff7;
$xex = dumper_xex_create();
dumper_xex_add_header($xex, $addr_start, $addr_end);
$head = dumper_pack($xex);

$body = file_get_contents('/home/fcatrin/koala_shot.bin');

$addr_start = 0x2e2;
$addr_end   = 0x2e3;
$exec_block = array();
dumper_xex_add_header($exec_block, $addr_start, $addr_end);
$exec_block[] = 0x15;
$exec_block[] = 0x33;
$tail = dumper_pack($exec_block);

$s = $head.$body.$tail;

file_put_contents('koala_code_atr.xex', $s);


?>