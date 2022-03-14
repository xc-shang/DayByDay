Bash script and /bin/bash^M: bad interpreter: No such file or directory 

:sparkles: I have seen this issue when creating scripts in Windows env and then porting over to run on a Unix environment.(https://stackoverflow.com/a/14219160)

    recreate the script on Ubuntu using vi, and the file encoding problem is solved.