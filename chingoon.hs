>main = putStrLn (chingoon 2)

>chingoon :: Int -> String
>chingoon chincount = goonhead ++ mouth chincount ++ chins chincount ++ lastchin chincount

>mouth :: Int -> String
>mouth chincount
> | chincount == 0 = slim
> | otherwise = fatty

>chins :: Int -> String
>chins chincount
> | chincount == 0 = ""
> | chincount == 1 = ""
> | otherwise = fatchin ++ chins (chincount-1)

>lastchin :: Int -> String
>lastchin chincount
> | chincount == 0 = ""
> | otherwise = fatchinbot

>goonhead = " __________\n(--[ .]-[ .]\n"
>fatty = "(       O  )\n"
>slim = "(_______O__)\n"
>fatchin = "(          )\n"
>fatchinbot = "(__________)\n"
