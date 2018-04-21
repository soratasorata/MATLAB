function [ img ] = my_img_inverse( img, H, V )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if(H == 1)
    img = uint8(img(end:-1:1,:,:));
end

if(V == 1)
    img = img(:,end:-1:1,:);
end

end

