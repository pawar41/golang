package main

import (
	"fmt"
)

func main() {
	name := "dhanesh"
	age, i := 32, 0
	var p int16 = 213
	
	for  i=0 ; i<=5 ; i++ {
		fmt.Println(i+1 ,")" ,"Your name is :", name, "\nYour age is :", age)
		fmt.Println(p)
	}
}
