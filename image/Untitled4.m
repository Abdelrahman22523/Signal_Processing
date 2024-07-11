clc 
clear all;
var_img = imread ("E:\signal project\peppers.png");
imshow (var_img) ;
img_gray = rgb2gray(var_img);
imshow (img_gray);
kx = [-1 0 1 ;
      -2 0 2 ;
      -1 0 1 ; ]; 
ky = [ -1 -2 -1;
        0 0 0 ;
        1 2 1 ;];
vertical = conv2(img_gray,kx,'same');
horizontal = conv2(img_gray,ky,'same');

f = sqrt(vertical.^2 + horizontal .^2);
f = uint16(f);
imshow (f);