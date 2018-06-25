package main

import (
    "fmt"
    "time"
)

func main() {
    for {
        time.Sleep(2000 * time.Millisecond)
        fmt.Println(time.Now())
    }
}
