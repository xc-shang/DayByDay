function [OutputMap] = ela_analyze_demo ( imPath )
    %ANALYZE Summary of this function goes here
    %   Detailed explanation goes here
    im= imread(imPath);
    Quality=90;
    Multiplier=15;
    Flatten=true;
    
    OutputMap = ela_demo(im,Quality,Multiplier,Flatten);
end