*Note: The default depth is 3, but it can be changed by the ag -depth=n.*

# Exercise 2-0
Copy (by hand or from the book's web page) the grammar foodEng and test it with some parsing and generation.

> Food> parse "this wine is Italian"  
> Is (This Wine) Italian  

> Food> gr -tr | l
> Is (That (QKind Fresh Wine)) Expensive
> that fresh wine is expensive

> Food> gr -tr | l
> Is (That Cheese) Boring
> that cheese is boring

# Exercise 2-1
Add words and rules to foodEng, and test again in GF.

> Added the words:  
- Clean
- Weird
- French

> Added the rules:
- Pardon


# Exercise 2-2
Try out the Italian grammar in GF with the same commands as the English grammar.

> Problems: European languages such as Italian have genders and different Modifier rules(Mod). 

- Pardon item quality = {s = "scusatemi" ++ "," ++ item.s ++ quality.s ++ "?"} ;
- French = {s = "francese"} ;
- Clean = {s = "pulita" | "pulito"} ; --f,m
- Weird = {s = "strana" | "strano"} ; --f,m


# Exercise 2-3
Write a version of the food grammar for a language of your choice. Some rules will probably produce incorrect output, but don't worry: this will be solved later.  

Just make a list of the things that come out wrong, and use it later when you redesign the grammar.

> Writing a Japanese food grammar.
> Problems: Japanese has 3 different alphabets (kanji, katakana and hiragana (both kana are known as kanamoji))

```hs
concrete FoodJap of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Pardon item quality = {s = "すみません," ++ item.s ++ quality.s } ;
        Is item quality = {s = item.s ++ "わ" ++ quality.s} ;
        This kind = {s = "この" ++ kind.s} ;
        That kind = {s = "それ" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "お酒"} ;
        Cheese = {s = "チズ"} ;
        Fish = {s = "魚"} ;
        Very quality = {s = "とても" ++ quality.s} ;
        Fresh = {s = "新鮮な"} ;
        Warm = {s = "暖かい"} ;
        Italian = {s = "イタリア語"} ;
        French = {s = "フランス語"} ;
        Expensive = {s = "高価な"} ;
        Delicious = {s = "おいしい"} ;
        Boring = {s = "つまらない"} ;
        Clean = {s = "クリーン"} ;
        Weird = {s = "変な"} ;
    }
```

# Exercise 2-4
Try out translation and multilingual generation with FoodEng and FoodIta.

# Exercise 2-5
Define the reverse operation as a GF grammar by
using one abstract syntax and two concrete syntaxes. Translation between the concrete syntaxes should read a sequence of symbols and return them in the opposite order. For instance, a b c is translated c
b a.

# Exercise 2-6
Write a grammar containing the rule in Figure 16 and,
minimally, two names of stations. See all dierent alternatives by using linearization with the  flag -all in GF. Add more ways of requesting a ticket, for instance, I want to go from X to Y.


lin Ticket X Y =
((("I" ++ ("would like" | "want") ++ "to get" |
("may" | "can") ++ "I get" |
"can you give me" |
[]) ++
"a ticket") |
[]) ++
"from" ++ X ++ "to" ++ Y ++
("please" | []) ;

# Exercise 2-7
Add negative predication to the Food grammar, expressed
by is not or isn't in English, and by non e in Italian.

# Exercise 2-8
Add the with construction to the Food grammar, in both
the ambiguous and the unambiguous versions.

# Exercise 2-9
How many trees are there for an expression of form
Kind with . . . with Kind for 2, 3, and 4 with's? This series of numbers is
known as the Catalan numbers, and it is a common pattern of counting
in combinatorics; see en.wikipedia.org/wiki/Catalan number
for other examples.

# Exercise 2-10
(This is a variation of the exercise in Section 2.5, now
permitting translation between languages.) Write a concrete syntax of
Food for your favourite language. Use random generation to see how
correct it becomes. Don't care about ungrammatical sentences due to
gender and related things yet.

# Exercise 2-11
Create a word alignment graph for a string of length
10 by using the reversing grammar of the exercise in Section 2.9.

# Exercise 2-12
See what happens with word alignment if a word in
one language is translated by a phrase of several words in another one.
Write rst a grammar that displays this behaviour.

# Exercise 2-13
Make the reversing grammar of the exercise in Section
2.9 work with unspaced strings of letters a to z, for instance, to
convert the input "abcdefghi" to "ihgfedcba".

# Exercise 2-14
```hs
      parse    +    lin   iconst_2
2 + 3 ======> / \ ======> iconst_3
              2 3           iadd
```

Write a compiler of the kind described in Section 1.5
that translates addition expressions to JVM assembler. It is enough to
have a couple of integer constants. You can either make parentheses
obligatory (as in (2 + 3)) or leave them out altogether. The latter
alternative can either make expressions ambiguous or assume some form
of precedence. Chapter 8 will develop the compiler idea further.

