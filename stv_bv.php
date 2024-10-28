<?php
header("Access-Control-Allow-Origin: *"); // Allow any domain
header("Access-Control-Allow-Methods: POST, GET, OPTIONS, DELETE"); // Allow POST and other methods
// Log file path
$logFile = 'stv_bv.log';

// Get POST data
$postData = print_r($_POST['data'], true);

// Append POST data to the log file
file_put_contents($logFile, date('Y-m-d H:i:s') . " - " . $_POST['data'] . "\n", FILE_APPEND);

echo "POST data logged.";