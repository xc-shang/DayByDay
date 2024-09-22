update-alternatives is a tool to manage system links when u installed multiple software

follow the instructions as below :sparkles:**[How to choose the default gcc and g++ version?](https://askubuntu.com/questions/26498/how-to-choose-the-default-gcc-and-g-version)**:

**Install Alternatives**

Symbolic links cc and c++ are installed by default. We will install symbol links for gcc and g++, then link cc and c++ to gcc and g++ respectively. (Note that the 10, 20 and 30 options are the priorities for each alternative, where a bigger number is a higher priority.)

> `sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.3 10`
> `sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 20`

> `sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.3 10`
> `sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.4 20`

> `sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30`
> `sudo update-alternatives --set cc /usr/bin/gcc`

> `sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30`
> `sudo update-alternatives --set c++ /usr/bin/g++`

**Configure Alternatives**

The last step is configuring the default commands for gcc, g++. It's easy to switch between 4.3 and 4.4 interactively:

> `sudo update-alternatives --config gcc`
> `sudo update-alternatives --config g++`