# problems with installing caffe
:collision: 

    HDF5 issues:
    gflags issues:
    glog issues:
    LMDB issues:
    opencv_imgcodecs opencv_videoio issues:

>SOLVE : [Commonly-encountered-build-issues](https://github.com/BVLC/caffe/wiki/Commonly-encountered-build-issues)

:collision: 

    cublas_v2.h issues:
  
>SOLVE : uncomment CPU_ONLY := 1 in Makefile.config

:collision: 

    CXX/LD -o .build_release/tools/upgrade_solver_proto_text.bin
    .build_release/lib/libcaffe.so: undefined reference to `cv::imread(cv::String const&, int)'
    .build_release/lib/libcaffe.so: undefined reference to `cv::imencode(cv::String const&, cv::_InputArray const&,       std::vector<unsigned char, std::allocator<unsigned char> >&, std::vector<int, std::allocator<int> > const&)'
    .build_release/lib/libcaffe.so: undefined reference to `cv::imdecode(cv::_InputArray const&, int)'
    collect2: error: ld returned 1 exit status
    Makefile:625: recipe for target '.build_release/tools/upgrade_solver_proto_text.bin' failed
    make: *** [.build_release/tools/upgrade_solver_proto_text.bin] Error 1

 
>SOLVE : https://github.com/BVLC/caffe/issues/3700

:collision: after compiling [caffe] and [pycaffe], try to import caffe in python to test installed caffe, met:

    Traceback (most recent call last):
      File "/usr/bin/pip", line 9, in <module>
        from pip import main
    ImportError: cannot import name main
 
>SOLVE : [pip update to pip 10 prolems](https://stackoverflow.com/questions/49881448/importerror-cannot-import-name-main-after-upgrading-to-pip-10-0-0-for-python)
 
