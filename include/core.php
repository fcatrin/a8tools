<?php

function getParameter($key) {
	global $_GET;
	$param = isset($_GET[$key])?$_GET[$key]:null;
	return htmlSanitize($param);
}

function getPostParameter($key) {
	global $_POST;
	$param = isset($_POST[$key])?$_POST[$key]:null;
	return htmlSanitize($param);
}

function getAnyParameter($key) {
	$p = getParameter($key);
	if ($p != null) return $p;
	return getPostParameter($key);
}

function htmlSanitize($param) {
	if ($param == null) return null;
	return trim(str_replace("<", "&lt;", $param));
}

function isEmptyString($s) {
	return $s==null || strlen(trim($s))==0;
}


function get_file_content($filename) {
	$file = fopen($filename, 'r');
	$content = fread($file, (2* 1024 * 1024));
	fclose($file);
	return $content;
}

function getHeaders() {
	foreach ($_SERVER as $name => $value)
	{
		if (substr($name, 0, 5) == 'HTTP_')
		{
			$name = str_replace(' ', '-', strtolower(str_replace('_', ' ', substr($name, 5))));
			$headers[$name] = $value;
		} else if ($name == "CONTENT_TYPE") {
			$headers["Content-Type"] = $value;
		} else if ($name == "CONTENT_LENGTH") {
			$headers["Content-Length"] = $value;
		}
	}
	return $headers;
}

function getHeader($headers, $key) {
	if (!isset($headers[$key])) return null;
	return $headers[$key];
}

function startsWith($haystack, $needle) {
	// search backwards starting from haystack length characters from the end
	return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== FALSE;
}
function endsWith($haystack, $needle) {
	// search forward starting from end minus needle length characters
	return $needle === "" || strpos($haystack, $needle, strlen($haystack) - strlen($needle)) !== FALSE;
}

function isValidEmail($email) {
	return !filter_var($email, FILTER_VALIDATE_EMAIL) === false;
}

function abort_json($json) {
	die(json_encode($json));
}

function abort($code, $msg = null, $internal = null) {
	try {
		header('Content-type: text/plain');
		header('xtvapps-error: '.$code);
	} catch (Exception $e) {
		// ignore error
	}
	$result = array('error' => $code);
	if ($internal!=null) error_log($internal);
	if ($msg != null) $result['errorMessage'] = $msg;
	abort_json($result);
}

function json_success() {
	$result = array('success' => true);
	return json_encode($result);
}

function processLines($fileName, $processor, &$data = null) {
	$handle = fopen($fileName, "r");
	if ($handle) {
		while (($line = fgets($handle)) !== false) {
			$processor($line, $data);
		}
		fclose($handle);
	}
}

function redirect($url) {
	header('Location: '.$url);
	die();
}

function log_info($tag, $msg) {
	$date = date_create();
	$ts = date_format($date,"Y/m/d H:i:s");

	error_log("[$ts] I [$tag] $msg");
}

function log_error($tag, $msg) {
	$date = date_create();
	$ts = date_format($date,"Y/m/d H:i:s");

	error_log("[$ts] E [$tag] $msg");
}

function log_debug($tag, $msg) {
	$date = date_create();
	$ts = date_format($date,"Y/m/d H:i:s");

	error_log("[$ts] D [$tag] $msg");
}
function http_response_code_safe($code) {
	header('HTTP/1.1 '.$code);
}

?>
