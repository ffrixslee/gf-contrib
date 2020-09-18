interface Lexmp3 = open Syntax in {
    oper
        song_N : N = mkN "song" ;
        artist_N : N = mkN "artist" ;
        album_N : N = mkN "album";


        play_V : V = mkV "play" ;
        remove_V : V = mkV "remove" ;
        stop_V : V = mkV "stop" ;
        pause_V : V = mkV "pause" ;
    }