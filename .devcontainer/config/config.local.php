<?php

declare(strict_types=1);

use Fohn\Ui\Service\Ui;

// Overide values for you local environment.
return [
    /**
     * Database connection.
     * Uncomment this line in order to use the MySQL database.
     * Make sure to set the correct credentials for your MySQL server.
     */
    // 'db' => new Atk4\Data\Persistence\Sql('mysql:dbname=fohn;host=mysql;charset=utf8', 'root', 'root'),
    /**
     * Environment setting.
     * Uncomment this line in order to develop fohj-js and foh-css.
     * You will need to run `npm run dev` in the fohn-js and fohn-css directories.
     */
    // 'env' => Ui::DEV_ENV, 
    'timezone' => 'America/New_York',
];
