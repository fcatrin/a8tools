<?php 

function dumper_word($l, $h) {
	return $l + $h * 0x100;	
}

function dumper_l($n) {
	return $n & 0xFF;
}

function dumper_h($n) {
	return ($n & 0xFF00) >> 8;
}

function dumper_read_hex($line, &$result) {
	$parts = explode(' ', $line);
	
	foreach($parts as $part) {
		$v = hexdec($part);
		$result[] = $v;
	}
}

function dumper_read_blocks($blocks) {
	$result = array();
	foreach($blocks as $block) {
		dumper_read_hex($block, $result);
	}
	return $result;
}

function dumper_xex_create() {
	$xex = array();
	$xex[] = 0xFF;
	$xex[] = 0xFF;
	return $xex;
}

function dumper_xex_add_header(&$xex, $addr_start, $addr_end) {
	$xex[] = dumper_l($addr_start);
	$xex[] = dumper_h($addr_start);
	
	$xex[] = dumper_l($addr_end);
	$xex[] = dumper_h($addr_end);
	return $xex;
}

function dumper_xex_add_data(&$xex, $data, $offset = 0) {
	for($i=$offset; $i<count($data); $i++) {
		$xex[] = $data[$i];
	}
}

function dumper_pack($xex) {
	$s = '';
	foreach($xex as $x) {
		$s .= pack("C", $x);
	}
	
	return $s;
}

function dumper_boot_to_xex($boot, $eof) {
	$boot_data = dumper_read_blocks($boot);
	$boot_eof  = dumper_read_blocks($eof);
	$addr_start = dumper_word($boot_data[2], $boot_data[3]);
	$addr_exec  = dumper_word($boot_data[4], $boot_data[5]);
	
	$addr_end   = $addr_start + count($boot_data) - 6 - 1;
	
	$xex = dumper_xex_create();
	dumper_xex_add_header($xex, $addr_start, $addr_end);
	dumper_xex_add_data($xex, $boot_data, 6);
	
	$addr_start = 0x400;
	$addr_end   = $addr_start + count($boot_eof) - 1;

	dumper_xex_add_header($xex, $addr_start, $addr_end);
	dumper_xex_add_data($xex, $boot_eof);
	
	return dumper_pack($xex);
}


?>