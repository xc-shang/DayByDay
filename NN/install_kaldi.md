:collision: git clone fail because of network failure.

    create ssh key and using ssh to download.


:collision: install Intel Math Kernel Library
    **oneMKL is included in the Intel® oneAPI Base Toolkit**, which is a core set of tools and libraries for developing high-performance, data-centric applications across diverse architectures.

:collision: C++ compiler version
    no need to specify CXX=g++-4.8, it would couse error on compile openfst head file.

    Just check the number of cores of ur CPU: [$ nproc] and then [make -j 8].
    *recommending number of cores is 1/2 of total cores of CPU*

:collision: compile kaldi src failure caused by network error (because compressed file may be incomplete.)

    The first thing to do is [make clean].
    Then [rm -r] the trouble components and make again.

:collision: python2.7 is not the default python version.

    [alias python=python2.7] create the symlink to python2.7


:collision: cannot open shared file libmkl_intel_lp64.so.2

    that is because the new intel one api mkl library has different installation structure, we can fix this error by config the [${kaldi_ROOT}/src/configure] file by 
    [--mkl-root=${MKLROOT}/lib/intel64/libmkl_intel_lp64.so.1]