<?php 

include_once __DIR__.'/../../include/core.php';
include_once __DIR__.'/../../include/dumper.php';

$boot = array(
		'00 09 00 90 00 04 18 60 a2 f0 a0 d9 a9 00 8d c6 02 a9 3a 8d c4 02 8e 30 02 8c 31 02 a9 fd 85 14 a5 14 d0 fc 60 18 a9 c0 85 6a a9 c8 85 3d 85 3e a4 0c 84 34 80 d0 b7 0d 98 ff fb 03 85 3f 20 08 d8 20 21 d9 d0 41 20 21 d9 48 20 21 d9 a8 68 30 06 20 ba d8 4c 41 d8 29 7f 85 82 84 81 20 21 d9 d0 09 18 a5 82 65 84 85 84 90 2d a0 00 f0 07 91 83 c8 d0 fb e6 84 c6 82 10 f5 c4 81 f0 1a 91 83'
);

$boot_eof = array(
		'78 ac 13 d0 d0 fe 8c 0e d4 84 85 84 87 88 8c 01 d3 8c f8 03 a9 e0 a0 98 a2 04 20 64 04 ce 01 d3 a9 90 a0 d8 20 62 04 a9 90 a0 c0 20 62 04 a9 c1 8d fa ff a9 da 8d fb ff a9 40 8d 0e d4 a0 53 a9 af 38 a2 50 ff 0d da ca 10 fa 97 30 a9 27 18 a2 3b df 85 da 18 04 30 7d 85 da ca 10 f4 97 31 4c 25 d8 a2 10 85 86 84 88 a0 00 b1 85 91 87 a9 00 91 85 c8 d0 f5 e6 88 e6 86 ca d0 ee 60 00 00 00'
);


$xex = dumper_boot_to_xex($boot, $boot_eof);
file_put_contents('stac.xex', $xex);

?>