:collision: Basically, follow the instructions in [set-up-local-server-using-xampp](https://www.drupal.org/docs/develop/local-server-setup/windows-development-environment/set-up-local-server-using-xampp), but there're some lines of code needing to be modified.

    <VirtualHost example.local>
     DocumentRoot "C:/path/to/your/site"
     ServerName example.local

     CustomLog "C:/path/to/your/site/logs/example.local.access.log" combined
     ErrorLog "C:/path/to/your/site/logs/example.local.error.log"

     <Directory "C:/path/to/your/site">
      Options Indexes FollowSymLinks
      AllowOverride All
      Order allow,deny
      Allow from all
     </Directory>
    </VirtualHost>

1.There shouldn't have server name after '<VirtualHost', while this won't cause a error in xampp.
2.As above codes have given CustomLog and ErrorLog absolut path, so we need create the log folder and .log file arifically on our disk.
So, the above codes work just fine.

:collision: At the last, the blog instructs us to insert VirtualHost defined in above codes. Since Windows 10 file system doesn't allow you edit our hosts file, so us can copy and modify hosts file and replace the original.
   
