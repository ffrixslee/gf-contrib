resource dogs = {
param
    Number = Sg | Pl ;
oper
    verb : Number => Str = 
            table {
                Sg => "dog" ;
                Pl => "dogs" 
            } ;
} 