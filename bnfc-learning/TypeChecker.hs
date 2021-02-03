data Err a = Ok a | Bad String

compile :: String -> IO ()
compile s = case pProgram (myLexer s) of
  Bad err -> do 
    putStrLn "SYNTAX ERROR"
    putStrLn err
    exitFailure
  Ok tree -> case typecheck tree of
      Bad err -> do 
        putStrLn "TYPE ERROR"
        putStrLn err
        exitFailure
      Ok _ -> putStrLn "OK" -- or go to next compiler phase
