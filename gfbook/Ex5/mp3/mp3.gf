{- Design a small grammar that can be used for controlling
an MP3 player. The grammar should be able to recognize commands such as play this song, with the following variations:  
- objects: song, artist  
- modifiers: this, the next, the previous  
- verbs with complements: play, remove  
- verbs without complements: stop, pause -}

abstract mp3 = {

    flags startcat = Command ;

    cat 
      -- Two things needed; command with transitive verbs and intransitive verbs;
      Command ; Objects ; Verbs ; Modifiers ; Item ;

    fun
      -- FunName : ReturnType ;
      -- FunName : ArgType1 -> ArgType2 -> ReturnType ; 
      Action : Objects -> Modifiers -> Verbs -> Command ;
      This : Objects -> Item ;
      TheNext, ThePrevious : Modifiers ;
      TheNext, ThePrevious : Object -
      Song, Artist : Objects ;
      Pause, Play, Remove, Stop : Verbs ;

}