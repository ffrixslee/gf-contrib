--abstract syntax

abstract mp3 = {
    flags startcat = Command ;
    cat
        Command ; Object ; Item ; Verb ;
    fun
        verb_action : Verb -> Item -> Command;
        This, The : Object -> Item ;
        Play, Stop, Remove, Pause : Verb ;
        Song, Artist : Object ;
}