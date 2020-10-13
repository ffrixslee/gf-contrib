abstract SmartHouse = {

flags startcat = Command ;

cat
    Command ;
    Kind ;
    Device Kind ;
    Action Kind ;
    Switchable Kind ;
    Dimmable Kind ;

fun
    CAction : (k : Kind) -> Action k -> Device k -> Command ;

    light, fan : Kind ;
    --dim_light : Action light ;
    --dim_fan : Action fan ;
    --switchon_light : Action light ;
    --switchoff_light : Action light ;
    --switchon_fan : Action fan ;
    --switchoff_fan : Action fan;

    DKindOne  : (k : Kind) -> Device k ;

    --switchOn, switchOff : (k : Kind) -> Action k ;

    switchable_light : Switchable light ;
    switchable_fan : Switchable fan ;
    dimmable_light : Dimmable light ;

    switchOn: (k: Kind) -> Switchable k -> Action k ;
    switchOff: (k: Kind) -> Switchable k -> Action k ;

    dim : (k: Kind) -> Dimmable k -> Action k ;



}

