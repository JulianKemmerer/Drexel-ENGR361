m3Vec = [];
m4Vec = [];
m5Vec = [];
m6Vec = [];

for i = 3:6
    %Play game with m =i
    m=i;
    numBingo = 0;
    
    %Run trials for this m value
    numTrials = 10000;
    for trial = 1:numTrials
        board = generateBoard(m);
        isB = isBingo(board);
        if(isB)
            numBingo = numBingo +1;
        end
        probBingo = numBingo/trial;
        
        if(i==3)
            m3Vec = [m3Vec ; probBingo];
        end
        if(i==4)
            m4Vec = [m4Vec ; probBingo];
        end
        if(i==5)
            m5Vec = [m5Vec ; probBingo];
        end
        if(i==6)
            m6Vec = [m6Vec ; probBingo];
        end
        
    end
end

trials = 1:numTrials;

plot(trials,m3Vec,trials, m4Vec,trials, m5Vec,trials,m6Vec);
xlabel('Trials - k');
ylabel('Prob of Bingo Board - P(m)');
title('P(m) v.s. k for m={3,4,5,6}');
hleg1 = legend('m=3','m=4','m=5','m=6');

