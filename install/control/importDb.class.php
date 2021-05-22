<?php
use Daveismyname\SqlImport\Import;

class importDb
{
    public static function exec($filename,$hostdb){
        $username = 'root';
        $password = 'root';
        $database = 'form_exemplo1';
        $dropTables = false;
        new Import($filename, $username, $password, $database, $hostdb, $dropTables);
    }
}
