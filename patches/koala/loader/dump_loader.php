<?php 

include_once __DIR__.'/../../../include/core.php';
include_once __DIR__.'/../../../include/dumper.php';

$loader = array(
		'55 55 4c 3f 09 a0 00 a9 01 8d 1e 02 ad 1e 02 d0 fb a9 01 8d 1e 02 a9 00 99 61 08 c8 c0 0c d0 ec a0 00 ad 1e 02 d0 fb a9 01 8d 1e 02 a9 70 99 61 08 c8 c0 0c d0 ec a9 42 8d 30 02 a9 08 8d 31 02 a0 0c ad 1e 02 d0 fb a9 01 8d 1e 02 a9 70 99 42 08 c8 c0 15 d0 ec a0 0c ad 1e 02 d0 fb a9 01 8d 1e 02 a9 00 99 42 08 c8 c0 15 d0 ec a9 61 8d 30 02 a9 08 8d 31 02 60 70 70 70 70 46 8e 07 70 70 02 02 02 70 70 70 70 06 70 70 70 70 06 41 75 07 00 00 00 00 00 30 32 29 33 2d 21 00 33 2f 26 34 00 00 00 00 51 52 57 52 52 52 52 52 52 52 52 52 52 52 52 52 57 52 52 52 52 52 52 52 52 57 52 52 52 52 52 52 52 52 52 52 52 57 52 45 7c 00 7c 46 47 46 47 46 47 46 47 46 47 46 47 46 7c 30 32 25 33 25 2e 34 21 7c 47 46 47 46 47 46 47 46 47 46 47 7c 00 7c 5a 52 58 52 52 52 52 52 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 58 52 52 52 52 52 52 52 52 52 52 52 58 52 43 00 00 00 00 00 00 00 00 2b 2f 21 2c 21 00 00 00 00 00 00 00 00 26 21 2c 34 21 2e 00 10 16 16 00 22 2c 2f 31 35 25 33 00 70 70 70 70 70 70 70 70 70 70 70 70 00 00 00 00 00 00 00 00 00 42 77 08 02 02 02 02 41 42 08 70 70 70 70 70 70 70 70 70 70 70 70 42 77 08 02 02 02 02 41 61 08 51 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 45 7c 33 75 00 70 72 6f 67 72 61 6d 61 00 73 65 00 64 65 74 75 76 6f 0e 00 70 6f 72 66 61 76 6f 72 00 00 00 00 00 00 00 7c 7c 72 65 74 72 6f 63 65 64 61 00 6c 61 00 63 69 6e 74 61 00 13 00 76 75 65 6c 74 61 73 00 79 00 70 75 6c 73 65 00 00 7c 7c 6c 61 00 74 65 63 6c 61 00 80 f3 f4 e1 f2 f4 80 0e 00 21 34 34 25 00 30 72 69 73 6d 61 00 33 6f 66 74 0e 00 00 00 7c 5a 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 43 a9 02 85 09 a9 00 8d 44 02 85 d2 20 53 09 20 9f 09 4c e0 09 a2 00 bd c4 02 9d 32 0c e8 e0 05 d0 f5 ad 30 02 8d 37 0c ad 31 02 8d 38 0c ad 2f 02 8d 39 0c ad f4 02 8d 3a 0c 60 a2 00 bd 32 0c 9d c4 02 e8 e0 05 d0 f5 ad 37 0c 8d 30 02 ad 38 0c 8d 31 02 ad 39 0c 8d 2f 02 ad 3a 0c 8d f4 02 60 a9 75 8d 30 02 8d 02 d4 a9 07 8d 31 02 8d 03 d4 a2 00 a9 22 8d 2f 02 8d 00 d4 a9 e0 8d f4 02 8d 09 d4 bd d0 09 9d c4 02 9d 16 d0 e8 e0 05 d0 f2 60 ff 0f 92 00 00 a9 61 8d 30 02 a9 08 8d 31 02 60 a9 2e 85 cb 85 cf a9 0c 85 cc 85 d0 a9 04 85 cd a9 00 85 ce a9 00 8d 3a 0d a9 60 8d 00 03 a9 00 8d 01 03 a9 52 8d 02 03 a9 40 8d 03 03 a9 3b 8d 04 03 a9 0c 8d 05 03 a9 35 8d 06 03 a9 00 8d 08 03 a9 01 8d 09 03 a9 ff 8d 0b 03 20 59 e4 c0 01 f0 03 4c 49 0a ad 3a 0d c9 3b d0 0d ad 3d 0c cd 2c 0c f0 68 90 03 4c f4 09 20 d5 09 a9 3c 8d 02 d3 a9 fd 20 b0 f2 20 03 07 ad 1f d0 c9 06 d0 f9 ad 1f d0 c9 07 d0 f9 a9 08 8d 1f d0 78 a9 34 8d 02 d3 a9 ff 85 13 a9 c0 85 14 a5 13 d0 fc ad 0f d2 c9 7f d0 f9 a9 f0 8d 2d 0c ad 0f d2 c9 7f d0 ed ce 2d 0c ad 2d 0c c9 00 d0 ef a9 13 8d 32 02 a9 ff 8d 0f d2 58 20 9f 09 4c f4 09 ad 38 08 c9 10 f0 06 ce 38 08 4c d3 0a a9 19 8d 38 08 ad 37 08 c9 10 f0 06 ce 37 08 4c d3 0a a9 19 8d 37 08 ce 36 08 a0 03 ce 2c 0c a2 00 86 4d b9 3b 0c 81 cb c8 c6 cd a5 cd c9 ff d0 02 c6 ce e6 cb a5 cb d0 02 e6 cc a5 cd d0 04 a5 ce f0 03 4c d2 0b a5 cf c9 2e d0 36 a5 d0 c9 0c d0 30 ad 2e 0c c9 ff d0 26 ad 2f 0c c9 ff d0 1f a9 02 85 cd a9 00 85 ce ad 30 0c 8d 2e 0c ad 31 0c 8d 2f 0c a9 30 85 cb a9 0c 85 cc 4c d2 0b 4c a8 0b a5 d0 c9 02 d0 3a a5 cf c9 e0 d0 04 a9 01 85 d2 a5 cf c9 e2 f0 07 ad 30 0c c9 e3 d0 23 84 d1 20 79 09 20 6b 0b 20 53 09 20 9f 09 a4 d1 4c 7b 0b ad e3 02 c9 01 f0 08 a9 3c 8d 02 d3 6c e2 02 60 20 00 0c a9 04 85 cd a9 00 85 ce a9 2e 85 cb 85 cf a9 0c 85 cc 85 d0 a5 d2 d0 3c a5 cf 8d e0 02 a5 cf 8d e0 02 a5 d0 8d e1 02 4c d2 0b 20 ec 0b ad 2e 0c 85 cb 85 cf ad 2f 0c 85 cc 85 d0 38 ad 30 0c ed 2e 0c 85 cd ad 31 0c ed 2f 0c 85 ce e6 cd a5 cd d0 02 e6 ce c0 ff f0 03 4c d8 0a ad 2c 0c f0 03 4c f4 09 a9 3c 8d 02 d3 20 79 09 6c e0 02 ad 2e 0c c9 fe d0 0c ad 2f 0c c9 fe d0 05 68 68 4c e1 0b 60 a2 00 bd c4 02 dd d0 09 f0 07 20 53 09 20 9f 09 60 e8 e0 05 d0 ec ad 30 02 c9 75 d0 ed ad 31 02 c9 07 d0 e6 ad 2f 02 c9 22 d0 df 60 42',
);

$block = dumper_read_blocks($loader);

$xex = array();

$addr_start = 0x6FE;
$addr_end   = $addr_start + count($block) - 1;

$xex = dumper_xex_create();
dumper_xex_add_header($xex, $addr_start, $addr_end);
dumper_xex_add_data($xex, $block);

$s = dumper_pack($xex);

file_put_contents('koala_loader.xex', $s);

?>