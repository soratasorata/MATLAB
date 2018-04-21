classdef imFolder
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        path
        numberImage
        diretory
        image_name
        
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
        
        function obj = list(obj)
            obj.image_name = cell(obj.numberImage,1);
            for i = 1:obj.numberImage
                obj.image_name{i} = obj.diretory(i).name;
            end
            
        end
        
    end
    
end

