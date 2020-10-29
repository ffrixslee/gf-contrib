module Food where

import PGF hiding (Tree)
----------------------------------------------------
-- automatic translation from GF to Haskell
----------------------------------------------------

class Gf a where
  gf :: a -> Expr
  fg :: Expr -> a

newtype GString = GString String  deriving Show

instance Gf GString where
  gf (GString x) = mkStr x
  fg t =
    case unStr t of
      Just x  ->  GString x
      Nothing -> error ("no GString " ++ show t)

newtype GInt = GInt Int  deriving Show

instance Gf GInt where
  gf (GInt x) = mkInt x
  fg t =
    case unInt t of
      Just x  ->  GInt x
      Nothing -> error ("no GInt " ++ show t)

newtype GFloat = GFloat Double  deriving Show

instance Gf GFloat where
  gf (GFloat x) = mkFloat x
  fg t =
    case unFloat t of
      Just x  ->  GFloat x
      Nothing -> error ("no GFloat " ++ show t)

----------------------------------------------------
-- below this line machine-generated
----------------------------------------------------

data GItem =
   GThat GKind 
 | GThis GKind 
  deriving Show

data GKind =
   GCheese 
 | GFish 
 | GQKind GQuality GKind 
 | GWine 
  deriving Show

data GPhrase =
   GIs GItem GQuality 
 | GPardon GItem GQuality 
 | GQuestion GItem GQuality 
  deriving Show

data GQuality =
   GBoring 
 | GDelicious 
 | GExpensive 
 | GFresh 
 | GItalian 
 | GVery GQuality 
 | GWarm 
  deriving Show


instance Gf GItem where
  gf (GThat x1) = mkApp (mkCId "That") [gf x1]
  gf (GThis x1) = mkApp (mkCId "This") [gf x1]

  fg t =
    case unApp t of
      Just (i,[x1]) | i == mkCId "That" -> GThat (fg x1)
      Just (i,[x1]) | i == mkCId "This" -> GThis (fg x1)


      _ -> error ("no Item " ++ show t)

instance Gf GKind where
  gf GCheese = mkApp (mkCId "Cheese") []
  gf GFish = mkApp (mkCId "Fish") []
  gf (GQKind x1 x2) = mkApp (mkCId "QKind") [gf x1, gf x2]
  gf GWine = mkApp (mkCId "Wine") []

  fg t =
    case unApp t of
      Just (i,[]) | i == mkCId "Cheese" -> GCheese 
      Just (i,[]) | i == mkCId "Fish" -> GFish 
      Just (i,[x1,x2]) | i == mkCId "QKind" -> GQKind (fg x1) (fg x2)
      Just (i,[]) | i == mkCId "Wine" -> GWine 


      _ -> error ("no Kind " ++ show t)

instance Gf GPhrase where
  gf (GIs x1 x2) = mkApp (mkCId "Is") [gf x1, gf x2]
  gf (GPardon x1 x2) = mkApp (mkCId "Pardon") [gf x1, gf x2]
  gf (GQuestion x1 x2) = mkApp (mkCId "Question") [gf x1, gf x2]

  fg t =
    case unApp t of
      Just (i,[x1,x2]) | i == mkCId "Is" -> GIs (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "Pardon" -> GPardon (fg x1) (fg x2)
      Just (i,[x1,x2]) | i == mkCId "Question" -> GQuestion (fg x1) (fg x2)


      _ -> error ("no Phrase " ++ show t)

instance Gf GQuality where
  gf GBoring = mkApp (mkCId "Boring") []
  gf GDelicious = mkApp (mkCId "Delicious") []
  gf GExpensive = mkApp (mkCId "Expensive") []
  gf GFresh = mkApp (mkCId "Fresh") []
  gf GItalian = mkApp (mkCId "Italian") []
  gf (GVery x1) = mkApp (mkCId "Very") [gf x1]
  gf GWarm = mkApp (mkCId "Warm") []

  fg t =
    case unApp t of
      Just (i,[]) | i == mkCId "Boring" -> GBoring 
      Just (i,[]) | i == mkCId "Delicious" -> GDelicious 
      Just (i,[]) | i == mkCId "Expensive" -> GExpensive 
      Just (i,[]) | i == mkCId "Fresh" -> GFresh 
      Just (i,[]) | i == mkCId "Italian" -> GItalian 
      Just (i,[x1]) | i == mkCId "Very" -> GVery (fg x1)
      Just (i,[]) | i == mkCId "Warm" -> GWarm 


      _ -> error ("no Quality " ++ show t)


