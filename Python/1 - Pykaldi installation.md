1. use python virtual environment as suggested, and virtualenv is free to delete.
2. install compatible installations with proxychains+clashy to avoid failure of 'git clone' or other download commands.
3. :collision: error 'libpython [not found]' when install clif.
    recompile python from source with **./configure --enable-shared** and recompile python from source with 'make altinstall' to not override current environment, this is because default python with ubuntu does not configure shared library.
4. :collision: error "No module named '_ctypes'" when install clif.
    refer to [this answer](https://stackoverflow.com/a/48045929), install libffi-dev on ubuntu, and recompile python from source with 'make altinstall' to not override current environment.