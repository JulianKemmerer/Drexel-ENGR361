wins = 0;
plays = 0;
winPlayFrac = 0;

playsVector = [];
winsFracVector = [];

for i = 1:100000
    result = PlayGame();
    plays = i;
    if result=='w'
        wins = wins +1;
    end
    
    if( mod(plays,100)==0)
        winPlayFrac = wins/plays;
        playsVector = [playsVector;plays];
        winsFracVector = [winsFracVector;winPlayFrac];
    end
end

%disp(playsVector);
%disp(winsFracVector);
plot(playsVector,winsFracVector);
xlabel('Number of Plays');
ylabel('Fraction - Number of Wins / Number of Plays');
winsFracVector(end)



