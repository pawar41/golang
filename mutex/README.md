
# mutex.go and mutex-goroutines.go
## run program mutex.go : 
- go to folder **mutex** ( inside **terminal** ) 

       cd mutex/

- run 

        go run mutex.go

## run program mutex-goroutines.go : 
- go to folder **mutex** ( inside **terminal** ) 

       cd mutex/

- run 

        go run mutex-goroutines.go









## inside mutex.go

```bash
package main
import "fmt"
import "time"
import "strconv"
import "math/rand"
//declare count variable, which is accessed by all the routine instances
var count = 0

//copies count to temp, do some processing(increment) and store back to count
//random delay is added between reading and writing of count variable
func process(n int) {
	//loop incrementing the count by 10
	for i := 0; i < 10; i++ {
		time.Sleep(time.Duration(rand.Int31n(2)) * time.Second)
		temp := count
		temp++
		time.Sleep(time.Duration(rand.Int31n(2)) * time.Second)
		count = temp
	}
	fmt.Println("Count after i="+strconv.Itoa(n)+" Count:", strconv.Itoa(count))
}

func main() {
	//loop calling the process() 3 times
	for i := 1; i < 4; i++ {
		go process(i)
	}

	//delay to wait for the routines to complete
	time.Sleep(25 * time.Second)
	fmt.Println("Final Count:", count)
}
```


## inside mutex-goroutines.go


```bash
package main
import "fmt"
import "time"
import "sync"
import "strconv"
import "math/rand"

//declare a mutex instance
var mu sync.Mutex

//declare count variable, which is accessed by all the routine instances
var count = 0

//copies count to temp, do some processing(increment) and store back to count
//random delay is added between reading and writing of count variable
func process(n int) {
	//loop incrementing the count by 10
	for i := 0; i < 10; i++ {
		time.Sleep(time.Duration(rand.Int31n(2)) * time.Second)
		//lock starts here
		mu.Lock()
		temp := count
		temp++
		time.Sleep(time.Duration(rand.Int31n(2)) * time.Second)
		count = temp
		//lock ends here
		mu.Unlock()
	}
	fmt.Println("Count after i="+strconv.Itoa(n)+" Count:", strconv.Itoa(count))
}

func main() {
	//loop calling the process() 3 times
	for i := 1; i < 4; i++ {
		go process(i)
	}

	//delay to wait for the routines to complete
	time.Sleep(25 * time.Second)
	fmt.Println("Final Count:", count)
}
```


## output mutex.go

```bash
Count after i=1 Count: 11
Count after i=3 Count: 12
Count after i=2 Count: 13
Final Count: 13
```


## output mutex-goroutines.go

```bash
Count after i=3 Count: 21
Count after i=2 Count: 28
Count after i=1 Count: 30
Final Count: 30
```

- **note:** The result could be different when you execute it but the final result won’t be 30.

## explanation


- Mutex is the short form for mutual exclusion. 
    Mutex is used when you don’t want to allow a resource to be accessed 
    by multiple subroutines at the same time. Mutex has 2 methods 
    – Lock and Unlock. Mutex is contained in sync package. 
    
    So, you have to import the sync package. 
    The statements which have to be mutually exclusively executed 
    can be placed inside mutex.Lock() and mutex.Unlock().

- Let’s learn mutex with an example which is counting the number of times a 
    loop is executed. 
    In **mutex-goroutines** program we expect routine to run loop 10 times and the count is 
    stored in sum. 
    
    You call this routine 3 times so the total count should be 30. 
    The count is stored in a global variable count.

- **mutex.go** is the program without mutex

- **mutex-goroutines.go** is the program without mutex

- Here what happens is 3 goroutines are trying to increase the loop 
    count stored in the variable count. 
    
    Suppose at a moment count is 5 and goroutine1 is going to increment 
    the count to 6. The main steps include

    - Copy count to temp

    - Increment temp

    - Store temp back to count

- Suppose soon after performing step 3 by goroutine1; 
    another goroutine might have an old value say 3 does 
    the above steps and store 4 back, which is wrong. 
    
    This can be prevented by using mutex which causes other routines 
    to wait when one routine is already using the variable.

- Inside **mutex-goroutines.go** we get the expected result as final output. 
    Because the statements reading, 
    incrementing and writing back of count is executed in a mutex.