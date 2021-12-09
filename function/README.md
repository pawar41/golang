
# function.go
## run program slice.go : 
- go to folder **function** ( inside **terminal** ) 

       cd function/

- run 

        go run function.go




## inside function.go


```bash

package main
import "fmt"

//calc is the function name which accepts two integers num1 and num2
//(int, int) says that the function returns two values, both of integer type.
func calc(num1 int, num2 int)(int, int) {  
    sum := num1 + num2
    diff := num1 - num2
    return sum, diff
}

func main() {  
    x,y := 15,10

    //calls the function calc with x and y an d gets sum, diff as output
    sum, diff := calc(x,y) 
    fmt.Println("Sum",sum)
    fmt.Println("Diff",diff) 
}

```



## output

```bash
Sum 25
Diff 5

```



## explanation


-   A function represents a block of statements which performs a specific task. 
    A function declaration tells us function name, 
    return type and input parameters. 
    
    Function definition represents the code contained in the function. 

-   The syntax for declaring the function is

        func function_name(parameter_1 type, parameter_n type) return_type {
        //statements
        }

-   The parameters and return types are optional. Also, you can return multiple values from a function.

-   In function.go function named calc will accept 2 numbers and performs the addition and subtraction and returns both values.
