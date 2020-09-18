concrete HelloEng of Hello = {
  lincat Greeting, Recipient = {s : Str} ;

  lin
    Hello recip = {s = "hello" ++ recip.s} ;
    Gmorning recip = {s = "good morning" ++ recip.s} ;
    World = {s = "world"} ;
    Mum = {s = "mum"} ;
    Friends = {s = "friends"} ;
    Girl = {s = "girl"} ;
    Boy = {s = "boy"} ;
    Boss = {s = "boss"} ;
    Dad = {s = "dad"} ;
    Stranger = {s = "stranger"} ;
}

--Module header (showing that it is a concrete syntax of the abstract syntax Hello, itself named HelloEng)
--(in curly brackets):
  --linearization type definitions stating that Greeting and Recipient are records with a string s
  --linearization definitions stating what records are assigned to each of the meanings defined in the abstract syntax
