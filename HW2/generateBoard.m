function board = generateBoard( m )
%GENERATEBOARD Summary of this function goes here
%   Detailed explanation goes here

board = zeros(1,9);

while sum(board) < m
%Needs more ones

%generate random index 1->9
index = randi(9,1,1);
%set value at index to 1
board(index) = 1;
end

end

