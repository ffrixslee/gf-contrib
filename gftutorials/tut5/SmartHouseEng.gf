concrete SmartHouseEng of SmartHouse = {
    lincat 
        Action = {s : Str} ;
        Command = {s : Str} ;
        Device = {s : Str} ;
        Kind = {s : Str} ;
        Dimmable = {s : Str} ;
        Switchable = {s : Str} ;
    
    lin
        CAction _ action device = {s = action.s ++ device.s} ;

        DKindOne device  = {s = "the" ++ device.s}  ;

        light = {s = "light"} ;
        fan = {s = "fan"} ;
 
        switchable_light = {s = ""} ;
        switchable_fan = {s = ""} ;
        dimmable_light = {s = ""} ;

        --switchOn kind = { s = "switch-on" ++ kind.s } ;
        --dim kind = { s = Dimmable.s ++ kind.s} ;

        --dimmable = {s = "dimmable"} ;
        --switchable = {s = "switchable"} ;

        --dim_light = {s = "dim"} ;
        --dim_fan = {s = "dim"} ;
        --switchon_light = {s = "switch-on"} ;
        --switchoff_light = {s = "switch-off"} ;
        --switchon_fan = {s = "switch-on"} ;
        --switchoff_fan = {s = "switch-off"} ;

        dim kind po = {s = "dim" ++ po.s} ;

        switchOn kind po = {s = "switch-on" ++ po.s} ;
        switchOff kind po = {s = "switch-off" ++ po.s} ;
        
}