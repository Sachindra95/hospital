<?php
define('DB_SERVER', 'localhost');
define('DB_USER', 'sachindra');
define('DB_PORT', 3306);
define('DB_PASS', 'a>Fta!pQ(|80Pr?U');
define('DB_NAME', 'id20095232_hms');
$con = mysqli_connect(DB_SERVER, DB_PORT, DB_USER, DB_PASS, DB_NAME);
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
