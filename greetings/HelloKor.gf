concrete HelloKor of Hello = {
  lincat Greeting, Recipient = {s : Str} ;

  lin
    Hello recip = {s = "여보세요" ++ recip.s} ;
    Gmorning recip = {s = "좋은 아침" ++ recip.s} ;
    World = {s = "세계"} ;
    Mum = {s = "엄마"} ;
    Friends = {s = "친구"} ;
    Girl = {s = "소녀"} ;
    Boy = {s = "얘야"} ;
    Boss = {s = "보스"} ;
    Dad = {s = "아빠"} ;
    Stranger = {s = "낯선 사람"} ;
}
