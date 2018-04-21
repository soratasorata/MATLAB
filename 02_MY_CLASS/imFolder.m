classdef imFolder
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        path
        numberImage
        diretory
        image_name
        image_name_path
        
    end
    
    methods
        function my_imshow(obj,imNumber)
            imshow(imread(obj.image_name_path{imNumber,2}));
        end
        
        function obj = imFolder(path_)
            if( 7 == exist(path_) )
                obj.path = path_;
                dr = dir(path_);
                obj.diretory = dr(3:end);
                obj.numberImage = numel(obj.diretory);
            else
                error('Folder not found');
            end
            obj = list(obj);
        end
        
        function obj = set.numberImage(obj,num_)
            obj.numberImage = num_;     
        end
        
        function obj = list(obj)
            obj.image_name = cell(obj.numberImage,1);
            obj.image_name_path = cell(obj.numberImage,2);
            for i = 1:obj.numberImage
                obj.image_name{i} = obj.diretory(i).name;
                obj.image_name_path{i,1} = i;
                obj.image_name_path{i,2} = [obj.path obj.image_name{i}];
            end
            
        end
        
    end
    
end

