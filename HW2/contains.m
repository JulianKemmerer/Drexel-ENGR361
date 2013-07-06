function [ b ] = contains( board, toCheck )
%CONTAINS Summary of this function goes here
%   Detailed explanation goes here
b = 1;
for i = 1:length(toCheck)
    if(toCheck(i) ==1)
        if(board(i) ~= 1)
        b = 0;
        end
    end
end
end

