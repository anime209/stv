<?php
$dir = __DIR__; // Current directory

if (is_dir($dir)){
  if ($dh = opendir($dir)){
    while (($file = readdir($dh)) !== false){
      echo (is_dir($file) ? "[Folder] " : "[File] ") . "$file<br>";
    }
    closedir($dh);
  }
}
?>
