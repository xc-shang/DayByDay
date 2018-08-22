:collision: preparing for mask r-cnn, needs to install [waleedka/coco](https://github.com/waleedka/coco)

      >>> import coco
      Traceback (most recent call last):
        File "<stdin>", line 1, in <module>
      ModuleNotFoundError: No module named 'coco'

SOLVE: run the following code under coco/PythonAPI/:

    make
    [sudo make install] #this is equal to the under command
    sudo python setup.py build_ext install

:collision: install pycocotools may encounter:

    ***error message***
    ImportError: No module named Cython.Build

SOLVE: pycocotools need Cython installed to complete the installation:

    pip install cython
    [pip3 install cython]

:collision: using [pip/pip3] installs site-packages encounter:

    Traceback (most recent call last):
    File "/usr/bin/pip3", line 9, in <module>
      from pip import main
    ImportError: cannot import name 'main
    
SOLVE: this comes with the version 10 with pip, needs to change [/usr/bin/pip] with following codes, or [/usr/bin/pip3] if using python3:

    from pip import main
    if __name__ == '__main__':
    sys.exit(main())
    
change to 
    
    from pip import __main__
    if __name__ == '__main__':
     sys.exit(__main__._main())
     
