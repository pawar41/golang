
# defer.go and stacking-defer.go
## run program defer.go : 
- go to folder **defer** ( inside **terminal** ) 

       cd defer/

- run 

        go run defer.go


## run program stacking-defer.go : 
- go to folder **defer** ( inside **terminal** ) 

       cd defer/

- run 

        go run stacking-defer.go





## inside defer.go


```bash

package main
import "fmt"

func sample() {  
    fmt.Println("Inside the sample()")
}
func main() {  
    //sample() will be invoked only after executing the statements of main()
    defer sample()
    fmt.Println("Inside the main()")
}

```


## inside stacking-defer.go


```bash

package main
import "fmt"

func display(a int) {  
    fmt.Println(a)
}
func main() {  
    defer display(1)
    defer display(2)
    defer display(3)
    fmt.Println(4)
}


```



## output defer.go

```bash
Inside the main()
Inside the sample()

```

## output stacking-defer.go

```bash
4
3
2
1	

```



## explanation


-   Defer statements are used to defer the execution of 
    a function call until the function that contains the 
    defer statement completes execution.

    We can see that in defer.go example

- Stacking defer is using multiple defer statements. 
    Suppose you have multiple defer statements inside a function. 
    
    Go places all the deferred function calls in a stack, 
    and once the enclosing function returns, 
    the stacked functions are executed in the Last In First Out(LIFO) order. 
    
- We can see this in the stacking-defer.go example. 

    Here the code inside the main() executes first, 
    and then the deferred function calls are executed in the reverse order, 
    i.e. 4, 3,2,1.
