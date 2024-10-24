<?php
// Log file path
$logFile = 'stv_nb.log';

// Get POST data
$postData = print_r($_POST['data'], true);

// Append POST data to the log file
file_put_contents($logFile, date('Y-m-d H:i:s') . " - " . $postData['data'] . "\n", FILE_APPEND);

echo "POST data logged.";