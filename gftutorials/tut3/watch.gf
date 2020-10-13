resource watch = {
param
    Number = Sg | Pl ;
    VerbForm = VPresent Number | VPast | VPastPart | VPresPart ;
oper
    verb : Str -> {s : VerbForm => Str} = \watch -> {
        s = table {
            VPresent Sg => "watches" ;
            VPresent Pl => "watch" ;
            VPast => "watched" ;
            VPastPart => "watched" ;
            VPresPart => "watching" 
            }
        } ;
}