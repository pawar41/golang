package main
import "fmt"

func main() {  
    var x = 50
    if x < 10 {
        //Executes if x is less than 10
        fmt.Println("x is less than 10")
    } else {
        //Executes if x >= 10
        fmt.Println("x is greater than or equals 10")
    }
}