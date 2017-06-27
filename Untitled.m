clc;
clear all;
% numAvi = 10;
%for j = 1 : numAvi    
    %mov =  VideoReader(strcat('Video',int2str(j),'.avi'));
    mov =  VideoReader('飞翔门东_设备_SEQNBR1353_10-30-00_11-40-00_0.mp4');
    fnum = mov.NumberOfFrames; % 帧数
    RGBPath = 'F:\jiankong\飞翔门东_设备_SEQNBR1353_10-30-00_11-40-00\img\' ;
    for i = 1 : 25 : fnum-25
        singleframe = read(mov,[i i+24]);
        for j = 1 : 25
           strtemp = strcat(RGBPath,'image',int2str((i-1)*25+j),'.jpg');
            
            imwrite (singleframe(:,:,:,j),strtemp);
        end
    end
%            
