function [ result ] = PlayGame( )
%PLAYGAME Summary of this function goes here
%   Detailed explanation goes here
numConsecOdds = 0;
numHeads = 0;
numTails = 0;
tossCount = 0;

while (numHeads < 3 && numTails < 1 && numConsecOdds <5 && tossCount< 20)
    tossCount = tossCount +1;
    [c1,c2] = FlipTwoCoins();
    r = ResultFromTwoCoinFlip(c1,c2);
    if(r=='h')
        numHeads = numHeads + 1;
        numConsecOdds = 0;
    elseif(r=='o')
        numConsecOdds = numConsecOdds + 1;
    else % 't'
        numTails = numTails + 1;
        numConsecOdds = 0;
    end
end

if(numHeads == 3)
    result = 'w';
elseif(numTails == 1)
    result = 'l';
elseif(numConsecOdds == 5)
    result = 'l';
else
    disp('Exited while loop improperly!');
    numHeads
    numTails
    numConsecOdds
    tossCount
    result = 'l';
end
end

