#!/usr/bin/env python

def playGame(numPairs): #Returns t(n)
  #Create vector of correct size
  cards = range(1,numPairs) + range(1,numPairs);
  known = []
  #while there are still cards
  numTurns = 0;
  while(len(cards) >0):
	numTurns = numTurns +1
	turnResult = takeTurn(cards,known)
	cards = turnResult[0];
	known = turnResult[1];
  return 0
#########end play game



def takeTurn(cards, known):
  #pick a random card not already known
  #loop through list of all possible values
  toChooseFrom = []
  for value in cards:
	if (known.index(value) == -1)
	  toChooseFrom.append(value);

  #Pick random card from to choose from
  
  
  #first look for known
  return [cards,known]
  
  






#############Main Code

tAvg = []
N = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
k = 1000

for n in N:
  #Play game 1000 times with n cards
  totalTn = 0
  for i in range(1,k):
	totalTn = totalTn + playGame(n)

  Tn=totalTn/k
  tAvg.append(Tn)

print tAvg
	
  