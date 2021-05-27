class GoingToTheCinema {
  int movie(int card, int ticket, double perc) {
    var count = 1;
    var cardTicket = ticket * perc;
    var sum = card + cardTicket;
    while (ticket * count <= sum.ceil()) {
      cardTicket = cardTicket * perc;
      sum += cardTicket;
      count++;
    }
    return count;
  }
}