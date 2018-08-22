close all; 
clear all;

li='F:\Workspace\Matlab\MatlabDayByDay\li.jpg'
a1 = ela_analyze_demo(li);
a = imread('li.jpg');
% subplot(1,2,1);imshow(a);
% subplot(1,2,1);imshow(OutputMap);
%image(OutputMap);

xue1='F:\Workspace\Matlab\MatlabDayByDay\xue1.jpg'
b1 = ela_analyze_demo(xue1);
b = imread('xue1.jpg');
% subplot(1,2,1);imshow(b);
% subplot(1,3,1);imshow(b1);
%image(OutputMap1);

xue2='F:\Workspace\Matlab\MatlabDayByDay\xue2.jpg'
c1 = ela_analyze_demo(xue2);
c = imread('xue2.jpg');
% subplot(1,2,1);imshow(c);
% subplot(1,3,2);
imshow(c1);
%image(OutputMap2);

xue3='F:\Workspace\Matlab\MatlabDayByDay\xue3.jpg'
d1 = ela_analyze_demo(xue3);
d = imread('xue3.jpg');
% subplot(1,2,1);imshow(d);
% subplot(1,3,3);imshow(d1);
%image(OutputMap3);
