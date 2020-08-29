<?php

require_once '../app/bootstrap.php';

$url = new Core;
//phpinfo();

print "Sending mail...<br />";
print sendEmail('james@getinnotized.com', 'odurusphp@gmail.com', 'Is working', 'SMTP service installed','');
print "<br />Done";

?>
