function [ outcome ] = FlipCoin()
%FLIPCOIN Summary of this function goes here
%   Detailed explanation goes here
if rand(1)>.5
    outcome ='h';
else
    outcome ='t';
end

