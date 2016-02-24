<?php
// Zabbix GUI configuration file
global $DB;

$DB['TYPE']     = 'POSTGRESQL';
$DB['SERVER']   = 'localhost';
$DB['PORT']     = '5432';
$DB['DATABASE'] = 'zabbix';
$DB['USER']     = 'zabbix';
$DB['PASSWORD'] = '$DB_PASSWORD';

// SCHEMA is relevant only for IBM_DB2 database
$DB['SCHEMA'] = '';

$ZBX_SERVER      = 'localhost';
$ZBX_SERVER_PORT = '10051';
$ZBX_SERVER_NAME = 'localhost';

$IMAGE_FORMAT_DEFAULT = IMAGE_FORMAT_PNG;
?>

