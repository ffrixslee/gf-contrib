abstract mp3 = {

    flags startcat = Command ;

    cat 
      Command ; Modifiers ; Verbs ;

    fun 
      Verbs -> Modifiers -> Command ;
      Play, Remove, Stop, Pause : Verbs ;
      This, TheNext, ThePrevious : Modifiers ;

}