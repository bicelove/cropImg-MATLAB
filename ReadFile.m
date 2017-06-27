%
clear all ;
clc;
disp('ReadFile');

RGBPath = '/home/in66/data/cloth/170227/1_resize/校服/' ;
%BinaryPath = 'F:\Linux\Share\foreground_detection_code\code\output\Normal4\';
%imshow('F:\Linux\Share\foreground_detection_code\code\output\filename\EnterExitCrossingPaths1cor0090.png') ;
%fullfile( RGBPath ,'*.jpg')
RGBFile = dir(fullfile( RGBPath ,'*.jpg'));  %RGBͼ��λ��
%BinaryFile = dir(fullfile( BinaryPath ,'*.png'));  %��ֵͼ��λ��

save filename4.mat RGBFile RGBPath %BinaryFile BinaryPath;