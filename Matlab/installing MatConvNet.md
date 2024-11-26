1. :collision: compiling for CPU, **'cl.exe not in path'** error: 
:sparkles: **solution**: add 
> '\<Microsoft Visual Studio>\2022\Community\VC\Tools\MSVC\14.42.34433\bin\Hostx64\x64'

into path and move it before '\<vs code>\bin'

2. :collision: compiling for CPU, **compilation** error: 
>C:/ProgramData/MATLAB/SupportPackages/R2023a/3P.instrset/mingw_w64.instrset/lib/gcc/x86_64-w64-mingw32/6.3.0/include/tmmintrin.h: In function '__m64 _mm_abs_pi32(__m64)':
C:/ProgramData/MATLAB/SupportPackages/R2023a/3P.instrset/mingw_w64.instrset/lib/gcc/x86_64-w64-mingw32/6.3.0/include/tmmintrin.h:241:51: error: '__builtin_ia32_pabsd' was
not declared in this scope
>   return (__m64) __builtin_ia32_pabsd ((__v2si)__X);
>                                                  ^
>
>
>Error in vl_compilenn>mex_compile (line 583)
>mex(args{:}) ;
>
>Error in vl_compilenn (line 492)
>    mex_compile(opts, srcs{i}, objfile, flags) ;

:sparkles: **solution**: change matlab mex c language compiler, find your visual studio in
> \<MATLAB>\R2023a\bin\win64\mexopts\msvcpp2022.xml

and set mex in matlab:
> mex -setup:'\<MATLAB>\R2023a\bin\win64\mexopts\msvcpp2022.xml' C++
