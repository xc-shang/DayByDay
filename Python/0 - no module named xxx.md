1. sudo apt-get install libbz2-dev to make sure you have installed bzip2 in your system
2. recompile python-[version] from python tallball
   
3. :collision: create python virtual environment from recompiled python, but still report 'no module named _bz2'
    watch the error message, the venv ref /usr/local/bin/python-[version], but /usr/lib/python-[version]/lib-dynload/ have the file _bz2.xxxx.so

    solution:
    
    cp /usr/lib/python-[version]/lib-dynload/ have the file _bz2.xxxx.so /usr/local/lib/python-[version]/lib-dynload/_bz2.xxxx.so

4. :collision: create python virtual environment from recompiled python, but still report 'no module named _sqlite3'
    watch the error message, the venv ref /usr/local/bin/python-[version], but /usr/lib/python-[version]/lib-dynload/ have the file _sqlite3.cpython-xx-x86_64-linux-gnu.so

    solution:
    
    cp /usr/lib/python-[version]/lib-dynload/ have the file _sqlite3.xxxx.so /usr/local/lib/python-[version]/lib-dynload/_sqlite3.xxxx.so