:collision: using sift experiment code developed on opencv-2.4.x, need to install opencv-2.4.10.

	Basically, download windows extractor from [OpenCv official site](https://opencv.org/releases.html), and extract to whatever you want to install opencv.
	Following the installation instruction [Installation in Windows](https://docs.opencv.org/master/d3/d52/tutorial_windows_install.html), this will guide you through the whole installation.

:collision: when build opencv using cmake, need to cancle the "BUILD_opencv_gpu", or you will make an error when continue build procedure using visual studio or any other c/c++ compiler.

:collision: if you change the system environment variable, you need to log out windows and log in to reload the changed environment variable.