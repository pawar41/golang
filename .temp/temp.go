package main

import (
	"fmt"
	"time"
)

func declare(a int) (int) {
	fmt.Println("I am inside declare")
	return a
}

func display() {
	for i:=0; i<5; i++ {
		time.Sleep(1 * time.Second)
		fmt.Println("In display")
	}
}

func square(a int) (int) {
	fmt.Println("I am inside square")
	return a*a
}

func main() {
	//invoking the goroutine display()
	go display()
	for i:=0; i<5; i++ {
		time.Sleep(2 * time.Second)
		fmt.Println("In main")
	}
}
