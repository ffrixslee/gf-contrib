-- a "Hello World" grammar
abstract Hello = {
  flags startcat = Greeting ;

  cat Greeting ; Recipient ;

  fun
    Hello, Gmorning : Recipient -> Greeting ;
    Girl, Boy, Boss, Dad, Stranger, World, Mum, Friends : Recipient ;
}

-- The code has the following parts:
-- comment(optional)
-- module header
-- module body consisting of:
  --startcat flag declaration stating that Greeting is default start category for parsing and generation
  --category declarations
  --function declarations
