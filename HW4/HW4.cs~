using System;
using System.Collections.Generic;

class main
{
   public static int Main(string[] args)
   {
	  Console.WriteLine("BEGIN!");
	  List<double> tAvg = new List<double>();
	  List<int> N = new List<int>()
	  {
		5, 10, 15, 20, 25, 30, 35, 40, 45, 50
	  };
	  int k = 1000;

	  foreach (int n in N)
	  {
		Console.WriteLine(n);
		double totalTn = 0;
		for(int i =1; i<=k; i++)
		{
		  totalTn += playGame(n);
		}
		//Record the avg
		tAvg.Add(totalTn/k);
	  }
	  //Print the end result
	  foreach(double t in tAvg)
	  {
		Console.WriteLine(t);
	  }
	  return 0;
   }

   public static int playGame(int numPairs)
   {
	 List<Card> cards = initCards(numPairs);
	 /*foreach(Card s in cards)
	 {
	   Console.WriteLine(s.value);
	 }*/
	 
	 int turnCount = 0;
	  
	 while(cards.Count >2)
	 {
	  turnCount++;
	  //Pick one random, unflipped card
	  Card card1 = pickRandomUnflippedCard(ref cards);

	  //If it has known pair, pick that pair
	  if(hasKnownPair(ref card1,ref cards))
	  {
		removeAllCardsWithEqualValue(ref card1, ref cards);
	  }
	  else
	  {
		//Pick another random, unflipped card
		Card card2 = pickRandomUnflippedCard(ref cards);
		  //If pair, remove pair
		if(hasKnownPair(ref card2, ref cards))
		{
			removeAllCardsWithEqualValue(ref card2,ref cards);
		}
		else
		{
		  //Second card is not known
		  //Do nothing...next turn
		}
	  }
	 }
	 return turnCount + 1;
   }

   public static void removeAllCardsWithEqualValue(ref Card c, ref List<Card> cards)
   {
	  /*Console.WriteLine("Cards before: Remove: " + c.value);
			foreach(Card p in cards)
	  {
		Console.WriteLine(p.value);
	  }	*/
	 
	 //Remove all cards with equal value
	 int size = cards.Count;
	 int increment = 0;
	  for(int i = 0; i < size ; i+= increment)
	  {
		increment = 1;
		//Console.WriteLine("starti: " + i);
		//Console.WriteLine("startSize: " + size);
		//Console.WriteLine(c.value + " ==?" + cards[i].value);
		if(c.value == cards[i].value)
		{
		  //Console.WriteLine(c.value + " ==TRUE" + cards[i].value);
		  cards.Remove(cards[i]);
		  cards.Remove(c);
		  increment = 0;
		}
		size = cards.Count;
		//Console.WriteLine("endSize: " + size);
		//Console.WriteLine("endi: " + i);
	  }
	  
	  /*
	 Console.WriteLine("Cards after:");
	  foreach(Card p in cards)
	  {
		Console.WriteLine(p.value);
	  }*/
   }

   public static Card pickRandomUnflippedCard(ref List<Card> cards)
   {
	 //Get list of unflipped cards
	 List<int> unflipped = new List<int>();
	 for(int i = 0; i < cards.Count; i++)
	 {
	   if(cards[i].flipped ==false)
	   {
		 unflipped.Add(i);
	   }
	 }

	  int unflippedSize = unflipped.Count;
	  int randomUnflippedIndex = (new Random()).Next(0,unflippedSize-1);
	 int index = unflipped[randomUnflippedIndex];
	 int size = cards.Count;
	 Card randomCard = cards[index];
	 while(randomCard.flipped == true)
	 {
	   Console.WriteLine("ERROR!");
	  size = cards.Count;
	  index = (new Random()).Next(0,size-1);
	  randomCard = cards[index];
	 }
	 cards[index].flipped = true;
	  randomCard.flipped = true;
	 return randomCard;
   }

   public static bool hasKnownPair(ref Card c, ref List<Card> cards)
   {
	 /*Console.WriteLine("Looking for: " + c.value + " in:");
	 	foreach(Card p in cards)
	  {
		Console.WriteLine(p.value + "," + p.flipped );
	  }	*/
	 //Check is the value of c is had by any of the flipped cards
	 bool rV = false;
	 foreach(Card toCheck in cards)
	 {
	   if((toCheck.value == c.value && toCheck.flipped ==true && toCheck != c))
	   {
		 rV = true;
	   }
	 }

	 //Console.WriteLine("Found?: " + rV);
	 
	 return rV;
   }

   public static List<Card> initCards(int numPairs)
   {
	 List<Card> cards = new List<Card>();
	 for(int i = 1; i <= numPairs; i++)
	 {
	   Card c = new Card();
	   c.value = i;
	   cards.Add(c);
	 }
	 for(int i = 1; i <= numPairs; i++)
	 {
	   Card c = new Card();
	   c.value = i;
	   cards.Add(c);
	 }

	 return cards;
   }
}


class Card
{
	public int value = 0;
	public bool flipped = false;
  
    public Card()
    {

    }
}
