clc;
clear;

imgrgb = imread("daireler1.png");
imshow(imgrgb);

cetvel = imdistline;
delete(cetvel)

imggri = rgb2gray(imgrgb);
imshow(imggri);

[merkezler,yaricaplar] = imfindcircles(imgrgb,[20 25],"ObjectPolarity","dark","Sensitivity",0.92);
imshow(imgrgb);
viscircles(merkezler,yaricaplar);

[merkezler,yaricaplar] = imfindcircles(imgrgb,[20 25],"ObjectPolarity","dark","Sensitivity",0.92,"Method","TwoStage");
viscircles(merkezler,yaricaplar);

[merkezlerparlak,yaricaplarparlak,parlaklikdegeri] = imfindcircles(imgrgb,[20 25],"ObjectPolarity","bright","Sensitivity",0.92,"EdgeThreshold",0.1);
viscircles(merkezlerparlak,yaricaplarparlak,"Color","b");

