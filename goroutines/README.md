
# goroutines.go and goroutines-disp.go 
## run program goroutines.go : 
- go to folder **goroutines** ( inside **terminal** ) 

       cd goroutines/

- run 

        go run goroutines.go

## run program goroutines-disp.go : 
- go to folder **goroutines** ( inside **terminal** ) 

       cd goroutines/

- run 

        go run goroutines-disp.go






## inside goroutines.go


```bash

package main
import "fmt"
    
func display() {
	for i:=0; i<5; i++ {
		fmt.Println("In display")
	}
}

func main() {
	//invoking the goroutine display()
	go display()
	//The main() continues without waiting for display()
	for i:=0; i<5; i++ {
		fmt.Println("In main")
	}
}


```


## inside goroutines-disp.go


```bash

package main
import "fmt"
import "time"
    
func display() {
	for i:=0; i<5; i++ {
		time.Sleep(1 * time.Second)
		fmt.Println("In display")
	}
}

func main() {
	//invoking the goroutine display()
	go display()
	for i:=0; i<5; i++ {
		time.Sleep(2 * time.Second)
		fmt.Println("In main")
	}
}



```


## output goroutines.go

```bash
In main
In main
In main
In main
In main

```


## output goroutines-disp.go

```bash
In display
In main
In display
In display
In main
In display
In display
In main
In main
In main

```



## explanation


- **Concurrency**

    - Go supports concurrent execution of tasks. 
        It means Go can execute multiple tasks simultaneously. 
        It is different from the concept of parallelism. 
        In parallelism, a task is split into small subtasks and are executed in parallel. 

    - But in concurrency, multiple tasks are being executed simultaneously. 
        Concurrency is achieved in Go using Goroutines and Channels.
        
- **Goroutines**

    -   A goroutine is a function which can run concurrently with other functions. 
        Usually when a function is invoked the control gets transferred into the 
        called function, and once its completed execution control returns to the 
        calling function. The calling function then continues its execution. 
        The calling function waits for the invoked function to complete the 
        execution before it proceeds with the rest of the statements.

    -   But in the case of goroutine, 
        the calling function will not wait for the execution of the invoked 
        function to complete. It will continue to execute with the next statements. 
        You can have multiple goroutines in a program.

    -   Also, 
        the main program will exit once it completes executing 
        its statements and it will not wait for completion of the goroutines invoked.

    -   Goroutine is invoked using keyword go followed by a function call.

    -   Example :
            
            go add(x,y)
            
    -   in **goroutines.go** the main program completed execution even before the goroutine started. 
        The display() is a goroutine which is invoked using the syntax 

            go function_name(parameter list)

    -   In the above code, the main() doesn’t wait for the display() to complete, 
        and the main() completed its execution before the display() executed its code. 
        So the print statement inside display() didn’t get printed.

    -   We have modified the program to print the statements from display() as well 
        in **goroutines-disp.go**. 
        We add a time delay of 2 sec in the for loop of main() 
        and a 1 sec delay in the for loop of the display().
