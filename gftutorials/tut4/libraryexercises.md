1. Find resource grammar terms for the following English phrases (in the category **Phr**). You can first try to build the terms manually.

    **mkPhr = Cl -> Phr  
    mkPhr = S -> Phr
    mkPhr = QS -> Phr**

- <ins>every man loves a woman</ins>  

    man, woman : NP  
    loves : V2

    > verb_action np v2 np = mkCl np v2 np 

    Terms | Type
    ------------ | -------------
    man, woman | NP
    loves | V2
    every man loves a woman | mkCl np v2 np

- <ins>this grammar speaks more than ten languages</ins> 

    this grammar: mkNP (Quant N)  
    speaks: V2  
    languages: N
    more than: CAdv

    mkNP = Quant -> N -> NP  
    mkCl (Quant np v2 mkNP (np CAdv)) 

    Terms | Type
    ------------ | -------------
    this grammar | NP
    speaks | V2
    more than | CAdv
    10 languages | NP
    this grammar speaks more than ten languages | mkCl (Quant np v2 mkNP (np CAdv))

- <ins>which languages aren't in the grammar</ins>  
    which: which_IQuant  
    languages: NP  
    which languages: mkIDet ( which_IQuant pluralNum np)     
    aren't: negativePol  
    in the grammar: mkAdv (in_Prep np) 

    Terms | Type | 
    ------------ | -------------  
    which | which_IQuant 
    languages | NP
    which languages | mkIDet (which_IQuant pluralNum np)
    aren't | negativePol
    which languages aren't in the grammar | mkQS (mkCl (which_IQuant pluralNum np negativePol mkAdv (in_Prep np) )) 


- <ins>which languages did you want to speak</ins>  

 > Then translate the phrases to other languages.

 from Regina C to everyone:    2:50 PM
the right side one has Eng.
from Maryam to everyone:    2:52 PM
what Regina said - I initially made the same mistake Liyana! and got so confused 
from Regina C to everyone:    2:53 PM
keke. that was responding to inari's spot the difference question on Liyana's code before it got corrected to be same.

Tut 2
continuous : Str -> Str = \s -> case s of {
      x + "e" => x + "ing" ;
      beginning + #consonant + #consonant
        => s + "ing" ;
      beginning + c@#consonant
        => beginning + c + c + "ing" ;
      _       => s + "ing"
      } ;