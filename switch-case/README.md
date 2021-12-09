
# switch-case.go
## run program : 
- go to folder **switch-case** ( inside **terminal** ) 

       cd switch-case/

- run 

        go run switch-case.go
## inside switch-case.go


```bash

package main
import "fmt"

func main() {  
    a,b := 2,1
    switch a+b {
    case 1:
        fmt.Println("Sum is 1")
    case 2:
        fmt.Println("Sum is 2")
    case 3:
        fmt.Println("Sum is 3")
    default:
        fmt.Println("Printing default")
    }
}

```

## output

```bash
Sum is 3	

```

## explanation


-   Switch is another conditional statement. 
    Switch statements evaluate an expression and the result is compared against 
    a set of available values(cases). 
    
-   Once a match is found the statements associated with that match(case) is executed. 
    If no match is found nothing will be executed. 
    You can also add a default case to switch which will be executed 
    if no other matches are found. The syntax of the switch is

        switch expression {
            case value_1:
                statements_1
            case value_2:
                statements_2
            case value_n:
                statements_n
            default:
                statements_default
            }

-   Here the value of the expression is compared against the values in each case. 
    Once a match is found the statements associated with that case is executed. 
-   If no match is found the statements under the default section is executed. 
##  try It

-   In program change the value of a and b to 3 and the result will be 
        
        Printing default

-   You can also have multiple values in a case by separating them with a comma.