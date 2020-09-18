--# -path=.:../mp3

incomplete concrete mp3I of mp3 =
        open Syntax, Lexmp3 in {
    lincat
        Command = Utt ;
        Object = CN ;
        Verb = V2 ;
        ITEM = NP ; 
    lin

        -- command = mkUtt (mkCl (mkVP (mkCN object))) ;
        verb object = mkCl (mkVP (mkCN object)) ;
        
        verb_action v2 np = mkUtt (mkImp (mkVP v2 np)) ;
        The object = mkNP the_Det object ;
        This object = mkNP this_Det object ;
    
        Song = mkCN song_N ;
        Artist = mkCN artist_N ;
        Album = mkCN album_N ; 

        Play = mkV2 play_V ;
        Remove = mkV2 remove_V ;
        Stop = mkV2 stop_V ;
        Pause = mkV2 pause_V ;


    }