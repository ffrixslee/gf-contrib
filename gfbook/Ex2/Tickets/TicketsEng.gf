concrete TicketsEng of Tickets = {
    
    lincat
        Booking, Station, BookTicket = {s : Str};

    lin 
        Ticket X Y = {s =        
            ((("I" ++ ("would like" | "want") ++ "to get" |
                ("may" | "can") ++ "I get" |
                "can you give me" |
                []) ++
                    "a ticket") |
                []) ++
                "from" ++ X.s ++ "to" ++ Y.s ++
                ("please" | []) };
        Barbican = {s = "Barbican"} ;
        Colindale = {s = "Colindale"} ;
        Leyton = {s = "Leyton"};
        Northwood = {s = "Northwood"};
}


