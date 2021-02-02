concrete mp3Eng of mp3 = open SyntaxEng, ParadigmsEng in {
  lincat 
    Command = Utt ;
    Objects = N ;
    Verbs = V2 ;
    Modifiers = Det ;
    
  lin 
    Action objects modifiers verbs = mkUtt (mkVP (mkNP (mkCN objects))) ;
    
    Play = mkV2 play_V ;
    Remove = mkV2 remove_V ;
    Stop = mkV2 stop_V ;
    Pause = mkV2 pause_V ;

    Song = mkCN song_N   ;
    Artist = mkCN artist_N ;

    This objects = mkNP this_Det objects ;
    
    --TheNext = mkNP mod_theNext ;
    --ThePrevious = mkNP mod_thePrevious ;

  oper 
        song_N : N = mkN "song" ;
        artist_N : N = mkN "artist" ;
        album_N : N = mkN "album";
 

        play_V : V = mkV "play" ;
        remove_V : V = mkV "remove" ;
        stop_V : V = mkV "stop" ;
        pause_V : V = mkV "pause" ;

        --mod_theNext : NP = mkNP "the next" ;
        --mod_thePrevious : NP = mkNP "the previous" ;
}