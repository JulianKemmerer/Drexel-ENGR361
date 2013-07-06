function [ is ] = isBingo( board )
%ISBINGO Summary of this function goes here
%   Detailed explanation goes here
is = 0;
if(contains(board, [1,1,1,0,0,0,0,0,0]))
    is = 1;
end

if(contains(board, [0,0,0,1,1,1,0,0,0]))
    is = 1;
end

if(contains(board, [0,0,0,0,0,0,1,1,1]))
    is = 1;
end

if(contains(board, [1,0,0,1,0,0,1,0,0]))
    is = 1;
end

if(contains(board, [0,1,0,0,1,0,0,1,0]))
    is = 1;
end

if(contains(board, [0,0,1,0,0,1,0,0,1]))
    is = 1;
end

if(contains(board, [1,0,0,0,1,0,0,0,1]))
    is = 1;
end

if(contains(board, [0,0,1,0,1,0,1,0,0]))
    is = 1;
end


end

