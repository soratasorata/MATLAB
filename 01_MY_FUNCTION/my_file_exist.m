function [ bool, file_path_with_extention ] = my_file_exist( file_path_without_extention )
% Input : file_path_without_extention
%   path + file - extension
%
% Output : [ bool, file_path_with_extention ]
%   bool = 0 --> File not found
%       file_path_with_extention = 'File not found'
%   bool = 1 --> File found
%       file_path_with_extention = path + file + extension

bool = 0;
ext = ['.jpg'; '.png'];
tmp = size(ext);
for i = 1:tmp(1,1)
    file_path_with_extention = [file_path_without_extention ext(i,:)];
    if( 2 == exist(file_path_with_extention) )
        % File found
        bool = 1;
        return
    end
end
file_path_with_extention = 'File not found';
end

