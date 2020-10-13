instance Lexmp3Eng of Lexmp3 = open SyntaxEng, ParadigmsEng in {

    oper
        song_N : N = mkN "song" ;
        artist_N : N = mkN "artist" ;
        album_N : N = mkN "album";


        play_V2 : V2 = mkV2 (mkV "play") ;
        remove_V2 : V2 = mkV2 "remove" ;
        stop_V2 : V2 = mkV2 "stop" ;
        pause_V2 : V2 = mkV2 "pause" ;
    }