class GoingToTheCinema {
  int movie(int card, int ticket, double perc) {
    int count = 1;
    double cardTicket = ticket * perc;
    double sum = card + cardTicket;
    while (ticket * count <= sum.ceil()) {
      cardTicket = cardTicket * perc;
      sum += cardTicket;
      count++;
    }
    return count;
  }
}