clc;
clear all;
% numAvi = 10;
%for j = 1 : numAvi    
    %mov =  VideoReader(strcat('Video',int2str(j),'.avi'));
    mov =  VideoReader('�����Ŷ�_�豸_SEQNBR1353_10-30-00_11-40-00_0.mp4');
    fnum = mov.NumberOfFrames; % ֡��
    RGBPath = 'F:\jiankong\�����Ŷ�_�豸_SEQNBR1353_10-30-00_11-40-00\img\' ;
    for i = 1 : 25 : fnum-25
        singleframe = read(mov,[i i+24]);
        for j = 1 : 25
           strtemp = strcat(RGBPath,'image',int2str((i-1)*25+j),'.jpg');
            
            imwrite (singleframe(:,:,:,j),strtemp);
        end
    end
%            
