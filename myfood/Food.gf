abstract Food = {

  flags startcat = Phrase ;

  cat
    Phrase; Item ; Kind ; Quality ;

  fun
    {-where you place your rules (?)
     Rules for forming plural items:-}
    
    -- These, Those : Kind -> Item
    --Regular Rules
    Is : Item -> Quality -> Phrase ;
    Pardon : Item -> Quality -> Phrase ;
    Question : Item -> Quality -> Phrase ; --from lin declarations
    This, That : Kind -> Item ;
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish{-, Meat, Chicken, Bread, Fries, Vegetable, Legume, Cake, Cookie, Yogurt, Milk-} : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring{-,Stale, Strange, Yummy, Spicy, Salty, Interesting, Tasteless, Sweet, Cheap, Cold-} : Quality ;
    --Gender rules
    --Pizza : Kind
}
