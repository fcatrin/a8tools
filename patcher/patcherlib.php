<?php 

function patcher_load_line($line) {
	$parts = explode(" ", $line);

	if (count($parts) < 3) return null;
	if ($parts[0] != 'c') return null;
	
	$addr = hexdec($parts[1]);
	$data = array();
	
	$index = 2;
	do {
		$part = $parts[$index];
		if ($part == ";") break;
		if (isEmptyString($part)) continue;
		
		$data[] = hexdec($part);
	} while (++$index < count($parts));
	
	return array('addr' => $addr, 'data' => $data);
}

function _read_word($handle) {
	$data  = fread($handle, 2);
	if (feof($handle)) return -1;
	
	$bytes = unpack("C*", $data);
	$l = $bytes[1];
	$h = $bytes[2];
	return $l + $h*256;
}

function patcher_apply($xexfile, $patch) {
	$handle = fopen($xexfile, "rb");
	if (!$handle) {
		die("cannot read $xexfile");
	}
	
	$patched = '';
	do {
		$addr_start = _read_word($handle);
		if ($addr_start < 0) break;
		
		$patched .= $addr_start;
		if ($addr_start == 0xFFFF) continue;
		
		$addr_end = _read_word($handle);
		if ($addr_end < 0) break;
		
		$patched .= $addr_end;
		
		$size = $addr_end - $addr_start + 1;
		echo "block ".dechex($addr_start)." - ".dechex($addr_end)." - size $size\n";
		$data = fread($handle, $size);
		$bytes = unpack("C*", $data);
	} while (!feof($handle));
		
}

function patcher_load($filename) {
	if (!file_exists($filename)) {
		die("file not found $filename\n");
	}
	
	$patch = array();
	
	$handle = fopen($filename, "r");
	if ($handle) {
		while (($line = fgets($handle)) !== false) {
			$patch_line = patcher_load_line($line);
			if ($patch_line) $patch[] = $patch_line;
		}
		
		fclose($handle);
	} else {
		die("cannot open $filename\n");
	} 
	
	return $patch;
}

?>