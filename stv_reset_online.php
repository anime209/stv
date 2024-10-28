<?php
// Log file path
$logFile = 'stv_online.log';

// Append POST data to the log file
file_put_contents($logFile, "");

echo "Reset logged.";