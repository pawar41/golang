
# select.go and select-default.go
## run program select.go : 
- go to folder **select** ( inside **terminal** ) 

       cd select/

- run 

        go run select.go

## run program select-default.go : 
- go to folder **channels** ( inside **terminal** ) 

       cd select/

- run 

        go run select-default.go






## inside select.go


```bash
package main
import "fmt"
import "time"

//push data to channel with a 4 second delay
func data1(ch chan string) {  
    time.Sleep(4 * time.Second)
    ch <- "from data1()"
}

//push data to channel with a 2 second delay
func data2(ch chan string) {  
    time.Sleep(2 * time.Second)
    ch <- "from data2()"
}

func main() {
    //creating channel variables for transporting string values
    chan1 := make(chan string)
    chan2 := make(chan string)
    
    //invoking the subroutines with channel variables
    go data1(chan1)
    go data2(chan2)
    
    //Both case statements wait for data in the chan1 or chan2.
    //chan2 gets data first since the delay is only 2 sec in data2().
    //So the second case will execute and exits the select block
    select {
    case x := <-chan1:
        fmt.Println(x)
    case y := <-chan2:
        fmt.Println(y)
    }
}

```


## inside select-default.go

```bash
package main
import "fmt"
import "time"

//push data to channel with a 4 second delay
func data1(ch chan string) {  
    time.Sleep(4 * time.Second)
    ch <- "from data1()"
}

//push data to channel with a 2 second delay
func data2(ch chan string) {  
    time.Sleep(2 * time.Second)
    ch <- "from data2()"
}

func main() {
    //creating channel variables for transporting string values  
    chan1 := make(chan string)
    chan2 := make(chan string)
    
    //invoking the subroutines with channel variables
    go data1(chan1)
    go data2(chan2)

    //Both case statements check for data in chan1 or chan2.
    //But data is not available (both routines have a delay of 2 and 4 sec)
    //So the default block will be executed without waiting for data in channels.
    select {
    case x := <-chan1:
        fmt.Println(x)
    case y := <-chan2:
        fmt.Println(y)
    default:
    	fmt.Println("Default case executed")
    }
}

```


## output select.go

```bash
from data2()
```


## output select-default.go

```bash
Default case executed	

```



## explanation


- Inside **select.go** the select statement waits for data to be available in any of the channels. 
    The data2() adds data to the channel after a sleep of 2 seconds which will cause 
    the second case to execute.

- Add a default case to the select in the same program and see the output. 
    Inside **select-default.go**, on reaching select block, 
    if no case is having data ready on the channel, 
    it will execute the default block 
    without waiting for data to be available on any channel.
- for example **select-default.go**
    
    This is because when the select block reached, 
    no channel had data for reading. So, the default case is executed.