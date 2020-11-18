abstract Tickets = {
  
      flags startcat = Booking ;
  
      cat
        Booking ; BookTicket ; Station ;
  
      fun
        Ticket : Station -> Station -> Booking ;
        Barbican, Colindale, Leyton, Northwood : Station ;
    }