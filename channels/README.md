
# channels.go and channels-goroutines.go
## run program channels.go : 
- go to folder **channels** ( inside **terminal** ) 

       cd channels/

- run 

        go run channels.go

## run program channels-goroutines.go : 
- go to folder **channels** ( inside **terminal** ) 

       cd channels/

- run 

        go run channels-goroutines.go






## inside channels.go


```bash
package main
import "fmt"
import "time"
    
func display(ch chan int) {
	time.Sleep(5 * time.Second)
	fmt.Println("Inside display()")
	ch <- 1234
}

func main() {
	ch := make(chan int) 
	go display(ch)
	x := <-ch
	fmt.Println("Inside main()")
	fmt.Println("Printing x in main() after taking from channel:",x)
}

```


## inside channels-goroutines.go


```bash

package main
import "fmt"
import "time"

//This subroutine pushes numbers 0 to 9 to the channel and closes the channel
func add_to_channel(ch chan int) {	
	fmt.Println("Send data")
	for i:=0; i<10; i++ {
		ch <- i //pushing data to channel
	}
	close(ch) //closing the channel

}

//This subroutine fetches data from the channel and prints it.
func fetch_from_channel(ch chan int) {
	fmt.Println("Read data")
	for {
		//fetch data from channel
x, flag := <- ch

		//flag is true if data is received from the channel
//flag is false when the channel is closed
if flag == true {
			fmt.Println(x)
		}else{
			fmt.Println("Empty channel")
			break	
		}	
	}
}

func main() {
	//creating a channel variable to transport integer values
	ch := make(chan int)

	//invoking the subroutines to add and fetch from the channel
	//These routines execute simultaneously
	go add_to_channel(ch)
	go fetch_from_channel(ch)

	//delay is to prevent the exiting of main() before goroutines finish
	time.Sleep(5 * time.Second)
	fmt.Println("Inside main()")
}


```


## output channels.go

```bash
Inside display()
Inside main()
Printing x in main() after taking from channel: 1234


```


## output channels-goroutines.go

```bash
Read data
Send data
0
1
2
3
4
5
6
7
8
9
Empty channel
Inside main()

```



## explanation


- **Channels** are a way for functions to communicate with each other. 
    It can be thought as a medium to where one routine places data and 
    is accessed by another routine in Golang server.

- A channel can be declared with the syntax

        channel_variable := make(chan datatype)

    Example:

            ch := make(chan int)

- You can send data to a channel using the syntax

        channel_variable <- variable_name

    Example

            ch <- x

- You can receive data from a channel using the syntax

        variable_name := <- channel_variable

    Example

        y := <- ch

- In the above Go language examples of goroutine, 
    you have seen the main program doesn’t wait for the goroutine. 
    But that is not the case when channels are involved. 
    
    Suppose if a goroutine pushes data to channel, 
    the main() will wait on the statement receiving channel data 
    until it gets the data.

- You will see this in "try it" Go language example. 
    First, write a normal goroutine and see the behaviour. 
    Then modify the program to use channels and see the behaviour.



- Inside **channels.go** what happens is the main() on reaching 
    x := <-ch will wait for data on channel ch. 
    The display() has a wait of 5 seconds and then push data to the channel ch. 
    The main() on receiving the data from the channel gets unblocked and 
    continues its execution.

- The sender who pushes data to channel can inform the receivers 
    that no more data will be added to the channel by closing the channel. 
    This is mainly used when you use a loop to push data to a channel. 
    A channel can be closed using

        close(channel_name)

- And at the receiver end, 
    it is possible to check whether the channel is closed 
    using an additional variable while fetching data from channel using

        variable_name, status := <- channel_variable

- If the status is True it means you received data from the channel. 
    If false, it means you are trying to read from a closed channel

- You can also use channels for communication between goroutines. 
    Need to use 2 goroutines – 
    one pushes data to the channel and other receives the data from the channel. 
    
    See channels-goroutines.go for example.

- Inside **channels-goroutines.go** there are 2 subroutines 
    one pushes data to the channel and other prints data to the channel. 
    The function add_to_channel adds the numbers from 0 to 9 and closes the channel. 
    Simultaneously the function fetch_from_channel waits at

- x, flag := <- ch and once the data become available, 
    it prints the data. It exits once the flag is false which means the 
    channel is closed.

- The wait in the main() is given to prevent the exiting of main() 
    until the goroutines finish the execution.

## try it 

- Execute the below program

```bash
package main
import "fmt"
import "time"
    
func display() {
	time.Sleep(5 * time.Second)
	fmt.Println("Inside display()")
}

func main() {
	go display()
	fmt.Println("Inside main()")
}


```

- The **output** will be

        Inside main()


- The main() finished the execution and did exit before the goroutine executes. 
    So the print inside the display() didn’t get executed. 
