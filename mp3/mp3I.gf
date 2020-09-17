--# -path=.:../mp3

incomplete concrete mp3I of mp3 =
        open Syntax, Lexmp3 in {
    lincat
        Command = Utt ;
        Object = CN ;
        Verb = V ; 
    lin

        command = mkUtt (mkCl (mkVP (mkCN object))) ;
        verb object = mkCl (mkVP (mkCN object)) ;
        
        This object = mkNP this_Det object ;
    
        Song = mkCN song_N ;
        Artist = mkCN artist_N ;
        Album = mkCN album_N ;
          
        Next = mkA next_A ;
        Previous = mkA prev_A ; 

        Play = mkV play_V ;
        Remove = mkV remove_V ;
        Stop = mkV stop_V ;
        Pause = mkV pause_V ;


    }