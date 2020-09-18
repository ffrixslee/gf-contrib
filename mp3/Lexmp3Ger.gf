instance Lexmp3Ger of Lexmp3 = open SyntaxGer, ParadigmsGer in {
oper
        song_N : N = mkN "Lied" ;
        artist_N : N = mkN "Sänger" ;
        album_N : N = mkN "Album";


        play_V : V = mkV "spiele" ;
        remove_V : V = mkV "entferne" ;
        stop_V : V = mkV "stoppen sie" ;
        pause_V : V = mkV "pausiere" ;
}