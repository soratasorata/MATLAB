classdef imFolder
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        path
        numberImage
        diretory
        
    end
    
    methods
        function obj = imFolder(path_)
            if( 7 == exist(path_) )
                obj.path = path_;
                dr = dir(path_);
                obj.diretory = dr(3:end);
                obj.numberImage = numel(obj.diretory);
            else
                error('Folder not found');
            end
        end
        
        function obj = set.numberImage(obj,num_)
            obj.numberImage = num_;
            
        end
        
    end
    
end

