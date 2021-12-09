
# for.go
## run program : 
- go to folder **for** ( inside **terminal** ) 

       cd for/

- run 

        go run for.go
## inside for.go

```bash

package main
import "fmt"

func main() {  
var i int
for i = 1; i <= 5; i++ {
fmt.Println(i)
    }
}

```

## output

```bash
1
2
3
4
5

```

## explanation


-   **Loops** are used to execute a block of statements repeatedly based on a condition. 
    Most of the programming languages provide 3 types of loops – **for, while, do while**. 
    But Go programming language supports only for loop.	

-   The **syntax** of a Golang for loop is

        for initialisation_expression; evaluation_expression; iteration_expression{
        // one or more statement
        }

-   The initialisation_expression is executed first(and only once) in Golang for loop.

-   Then the evaluation_expression is evaluated and if it’s true the code inside the block is executed.

-   The iteration_expression id is executed, and the evaluation_expression is evaluated again. 
    If it’s true the statement block gets executed again. 
    This will continue until the evaluation_expression becomes false.