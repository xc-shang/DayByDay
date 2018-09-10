:collision: be ware of pip10.0, this version pip introduces error "cannot import name 'main'."

	try to downgrade to pip-9.0.3.tar.gz to solve this error.
	[temporary solution] is to edit "pip" file.
		from pip import main 
		sys.exit(main());

	change the two lines with:
		from pip import __main__
		sys.exit(__main__.main());

	do not foeget to write them back once you downgrade successfully.

:collision: install python3 needs to install

	[sudo dpkg -i] zlib1g-dev libssl-dev libbz2-dev libsqlite3-dev pyymal.deb

:collision: install keras==2.1.6: 

	[sudo pip install --no-index --find-links=/path/to/downloads  six-1.11.0-py2.py3-none-any.whl] 

	install h5py from source needs to install 
	[pip install --user pkgconfig-1.4.0.tar.gz]
	[pip install --user Cython=0.28.5.tar.gz]

:collision: install  keras_application, keras_preprocssing need to install a lower version keras==2.1.6.
	
	[pip install --user --no-index --find-links=/path/to/downloads Keras-2.1.6-py2.pu3-none-any.whl]
	[pip install --user --no-index --find-links=/path/to/downloads Keras_Preprocessing-1.0.2.tar.gz]
	[pip install --user --no-index --find-links=/path/to/downloads Keras_Applications-1.0.4-py2.py3-none-any.tar.gz]

:collision: the Keras-contrib dependency has compatible issue. Modifying a couple of lines in [keras_contrib/layers/convolutional.py](https://github.com/beeva-hectoraguado/keras-contrib/commit/7de78939ca70d726d2cff7119cd781981e459787)

:collision: some issues about [#9621] and install keras==2.1.3 with cuda7.0, tensorflow==1.3.0
