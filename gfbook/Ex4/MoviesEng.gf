concrete MoviesEng of Movies = open ResEng in {
  lincat
    Comment, Quality = {s : Str} ;
    Kind = {s : Number => Str} ;
    Item = {s : Str ; n : Number} ;
lin
  Pred item quality =
    {s = item.s ++ copula ! item.n ++ quality.s} ;
  This = det Sg "this" ;
  That = det Sg "that" ;
  These = det Pl "these" ;
  Those = det Pl "those" ;
  Mod quality kind =
    {s = \\n => quality.s ++ kind.s ! n} ;
  Movie = regNoun "movie" ;
  Horror = regNoun "horror" ;
  Romance = regNoun "romance" ;
  Thriller = regNoun "thriller" ;
  Very a = {s = "very" ++ a.s} ;
  Fresh = adj "fresh" ;
  Warm = adj "warm" ;
  Scary = adj "scary" ;
  Sweet = adj "sweet" ;
  Funny = adj "funny" ;
}