function [ image ] = my_imread( file_path_without_extention )
% Input : file_path_without_extention
%   path + file - extension
%
% Output : [ image ]
%   image = an image or 'File not found'

[bool , path] = my_file_exist( file_path_without_extention );
if( 1 == bool )
    image = imread( path );
else
    % File not found
    image = path;
end
end

