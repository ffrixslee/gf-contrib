--# -path=.:../mp3

incomplete concrete mp3I of mp3 =
        open Syntax, Lexmp3 in {
    lincat
        Command = Utt ;
        Object = CN ;
        Verb = V2 ;
        Item = NP ; 
    lin
        
        verb_action v2 np = mkUtt (mkImp (mkVP v2 np)) ;
        The object = mkNP the_Det object ;
        This object = mkNP this_Det object ;
    
        Song = mkCN song_N ;
        Artist = mkCN artist_N ;
        Album = mkCN album_N ; 

        Play = play_V2 ;
        Remove = remove_V2 ;
        Stop = stop_V2 ;
        Pause = pause_V2 ;


    }