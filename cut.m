
load filename4.mat
len = length(RGBFile) ;
f = fopen('data/box.txt','w');
%fclose(f);
%box = zeros(len,4) ;
for i = 1 : len
    A = imread([RGBPath '/' RGBFile(i).name]);
    B = imresize(A, [1024 1024]);
    subplot(2,1,1);
    imshow(B) ;
    [x,y,c]=ginput(2);
    if c==1
        box = [floor( min(x(1),x(2)) ),floor( min(y(1),y(2)) ),floor( abs(x(2)-x(1)) ),floor( abs(y(2)-y(1)) )] ;
        BB=imcrop(B,box);
        %axes(handles.axes2); %��Ľ�ͼ����GUI�е�axes2��
        subplot(2,1,2);
        imshow(BB)
         
        imwrite(BB,['data/'  RGBFile(i).name ]) ;
        fprintf(f,'%s %d %d %d %d\n',RGBFile(i).name,box(1),box(2),box(3),box(4)) ;
    end
end
fclose(f);


