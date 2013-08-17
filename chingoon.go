package main

import (
  "os"
  "fmt"
  "strconv"
)

func main() {
  var chins int = 0

  if (len(os.Args) > 1) {
    i, err := strconv.Atoi(os.Args[1])
    if err != nil {
      fmt.Println(err)
      os.Exit(1)
    }
    chins = i
  }

  fmt.Println(" __________")
  fmt.Println("(--[ .]-[ .]")

  if (chins == 0) {
    fmt.Println("(_______O__)")
  } else {
    fmt.Println("(       O  )")
    for chindex := 1; chindex < chins; chindex++ {
      fmt.Println("(          )")
    }
    fmt.Println("(__________)")
  }
}
