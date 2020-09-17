    abstract Foodmarket = Drink, Fruit, Mushroom ** {
    fun
        FruitKind : Fruit -> Kind ;
        MushroomKind : Mushroom -> Kind ;
        DrinkKind: Wine -> Kind ;
    }

where
    abstract Drink = {
        cat Drink :
        fun Wine : Drink
    }

    abstract Fruit = {
        cat Fruit ;
        fun Apple, Peach : Fruit ;
    }

    abstract Mushroom = {
        cat Mushroom ;
        fun Cep, Agaric : Mushroom ;
    }