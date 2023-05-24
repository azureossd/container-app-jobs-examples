package main

import (
	"fmt"
	"time"
)

func main() {
	currentTime := time.Now()
	fmt.Println("The current time is:", currentTime.Format("2006-01-02 03:04:05 pm"))
}