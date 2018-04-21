function [ data ] = my_imgfilterN( img1,N )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[sx, sy, sz] = size(img1);
data = uint8(zeros(sx*N, sy*N, sz));
for i = 1:N
    ix = 1 + (i-1)*sx : i*sx;
    for j = 1:N
        iy = 1 + (j-1)*sy : j*sy;
        h = ones(i,j)/(i+j);
        data(ix, iy, : ) = imfilter(img1,h);
    end
end

end

