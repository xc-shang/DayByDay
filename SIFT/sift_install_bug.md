:collision: using sift experiment code developed on opencv-2.4.x, need to install opencv-2.4.10.

	Basically, download windows extractor from [OpenCv official site](https://opencv.org/releases.html), and extract to whatever you want to install opencv.
	Following the installation instruction [Installation in Windows](https://docs.opencv.org/master/d3/d52/tutorial_windows_install.html), this will guide you through the whole installation.

:collision: when build opencv using cmake, need to cancle the "BUILD_opencv_gpu", or you will make an error when continue build procedure using visual studio or any other c/c++ compiler.

:collision: if you change the system environment variable, you need to log out windows and log in to reload the changed environment variable.

:collision: using high version visual studio compile and debug project created with lower veresion visual studio, you may meet:

	'xxxxx.exe' (Win32): Loaded 'C:\Windows\System32\ntdll.dll'. Cannot find or open the PDB file.
	'xxxxx.exe' (Win32): Loaded 'C:\Windows\System32\KernelBase.dll'. Cannot find or open the PDB file.

following the 2nd answer from [@Alesson] in ['cannot find or open the pdb file' Visual Studio C++ 2013
](https://stackoverflow.com/questions/28381361/cannot-find-or-open-the-pdb-file-visual-studio-c-2013)

	Try go to Tools->Options->Debugging->Symbols and select checkbox "Microsoft Symbol Servers", Visual Studio will download PDBs automatically.
