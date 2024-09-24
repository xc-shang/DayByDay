compile paddle on desktop with [tutorial](https://www.paddlepaddle.org.cn/documentation/docs/zh/install/compile/linux-compile-by-make.html#anzhuangbiyaodegongju)
1. install gcc compiler
   :collision: compiler installation
   > SOLVE : download gcc source tarballs from gcc [releases web page](https://gcc.gnu.org/releases.html)
   > make sure ur source file is ***corrected downloaded*** or u will install a bad compiler

2. install python virtualenvwrapper
   :collision: virtualenvwrapper initial with hooker problem
   ***do not follow the paddle tutorial*** and set `VIRTUALENVWRAPPER_PYTHON` filled with `$PATH`
   set with virtualevnwrapper [installtaion] (https://virtualenvwrapper.readthedocs.io/en/latest/install.html#python-interpreter-virtualenv-and-path)

   > SOLVE : only `export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python`

