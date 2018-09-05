# DayByDay_Ubuntu

Some problems and correspond way of solving.

:collision: Free disk space ubuntu system is lower than 1 GB. Use the following command to analysis the whole system files and sort the list with file size:

    du -ah | sort -h

 :collision: Jetbrain apps usually automatically backup files, so it may becomes overlarge. Use the following step to clean stored files.

 	File -> Invalidate Caches / Restart

 	cache files would not deleted until the app restarts.
    
:exclamation: Ubuntu sorts file name in the following order:

    img1 -> img10 -> img2
