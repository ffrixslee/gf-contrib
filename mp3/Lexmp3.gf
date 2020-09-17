interface Lexmp3 = open Syntax in {
    oper
      song_N : N ;
      artist_N : N ;
      album_N : N ;

        
      next_A : A ;
      prev_A : A ; 

      play_V : V ;
      remove_V : V ;
      stop_V : V ;
      pause_V : V ;
    }