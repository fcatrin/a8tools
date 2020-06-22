<?php 

$last_search = null;

function patcher_load_line($line) {
	global $last_search;
	
	$parts = explode(" ", $line);

	if (count($parts) < 3) return null;
	
	$cmd = $parts[0];
	if ($cmd != 'c' && $cmd!= 's' && $cmd!= 'r') return null;
	
	$index = 1;
	if ($cmd == 'c') { // change has a base address
		$addr = hexdec($parts[$index]);
		$index++;
	}
	
	$data = array();
	do {
		$part = $parts[$index];
		if ($part == ";") break;
		if (isEmptyString($part)) continue;
		
		$data[] = hexdec($part);
	} while (++$index < count($parts));

	if ($cmd == 'c') {
		return array('cmd' => $cmd, 'addr' => $addr, 'data' => $data);
	} if ($cmd == 's') {
		$last_search = array ('cmd' => 's', 'search' => $data);
		return null;
	} if ($cmd == 'r' && $last_search != null) {
		$result = $last_search;
		$last_search = null;
		
		$result['replace'] = $data;
		return $result;
	}
}

function patcher_apply_bytes($addr_start, $addr_end, $bytes, $patches) {
	foreach($patches as $patch) {
		if ($patch['cmd'] == 'c') {
			// implement when there is a patch of this type
		} else if ($patch['cmd'] == 's') {
			$search = $patch['search'];
			$search_size = count($search);
			
			for($i=1; $i<=count($bytes); $i++) {
				$search_index = 0;
				while ($search_index < $search_size && $bytes[$i + $search_index] == $search[$search_index]) $search_index++;
				if ($search_index == $search_size) {
					print("block found\n");
					$replace = $patch['replace'];
					for($replace_index = 0; $replace_index < count($replace); $replace_index++) {
						$bytes[$i + $replace_index] = $replace[$replace_index];
					}
				}
			}
		}
	}
	return $bytes;
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
		
		$patched .= pack("S", $addr_start);
		if ($addr_start == 0xFFFF) continue;
		
		$addr_end = _read_word($handle);
		if ($addr_end < 0) break;
		
		$patched .= pack("S", $addr_end);
		
		$size = $addr_end - $addr_start + 1;
		echo "block ".dechex($addr_start)." - ".dechex($addr_end)." - size $size\n";
		$data = fread($handle, $size);
		$bytes = unpack("C*", $data);

		$bytes = patcher_apply_bytes($addr_start, $addr_end, $bytes, $patch);
		
		foreach ($bytes as $byte) {
			$patched .= pack("C", $byte);
		}
		
	} while (!feof($handle));
	return $patched;
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