--# -path=.:../mp3

concrete mp3Eng of mp3 =
        open SyntaxEng, ParadigmsEng in {

    lincat
        Command = Utt ;
        Object = CN ;
        Verb = V2 ; 
        Item = NP ;
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

    oper
        song_N : N = mkN "song" ;
        artist_N : N = mkN "artist" ;
        album_N : N = mkN "album";
 

        play_V : V = mkV "play" ;
        remove_V : V = mkV "remove" ;
        stop_V : V = mkV "stop" ;
        pause_V : V = mkV "pause" ;


    }