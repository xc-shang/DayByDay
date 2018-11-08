Had an impulse to do some fun, change the log-in welcome message would be a good start.
:sparkles: change /edt/motd file

    content in this file will be directly appended as  blank text after system update info

:sparkles: create a script in /etc/update-motd folder, steps follows [UpdateMotd](wiki.ubuntu.com/UpdateMotd)

    1.sudo apt-get install update-motd
    2.create ur script and put it in /etc/update-motd
    3.$ update-motd

use update-motd command will print current log-in welcome messages, which come from all files in /etc/update-motd/* and file /edt/motd .