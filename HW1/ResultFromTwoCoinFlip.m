function [ result ] = ResultFromTwoCoinFlip( c1,c2 )
%RESULTFROMTWOCOINFLIP Summary of this function goes here
%   Detailed explanation goes here
if c1 == 'h' && c2 == 'h'
    result = 'h';
elseif c1 == 't' && c2 == 't'
    result = 't';
else
    result = 'o';
end

