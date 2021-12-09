
# array.go
## run program : 
- go to folder **array** ( inside **terminal** ) 

       cd array/

- run 

        go run array.go
## inside array.go


```bash

package main
import "fmt"

func main() {  

    var numbers [3] string 
    //Declaring a string array of size 3 and adding elements 
    
    numbers[0] = "One"
    numbers[1] = "Two"
    numbers[2] = "Three"
    fmt.Println(numbers[1]) //prints Two
    fmt.Println(len(numbers)) //prints 3
    fmt.Println(numbers) // prints [One Two Three]

    directions := [...] int {1,2,3,4,5} 
    // creating an integer array and the size of the array is defined by,
    // the number of elements 
    
    fmt.Println(directions) //prints [1 2 3 4 5]
    fmt.Println(len(directions)) //prints 5

    //Executing the below commented statement prints invalid array index 5 
    //(out of bounds for 5-element array)
    //fmt.Println(directions[5]) 
}

```

## output

```bash
Two
3
[One Two Three]
[1 2 3 4 5]
5	

```

## explanation


-   Array represents a fixed size, named sequence of elements of the same type. 
    You cannot have an array which contains both integer and characters in it. 
    
    You cannot change the size of an array once You define the size.

-   The syntax for declaring an array is

        var arrayname [size] type

-   Each array element can be assigned value using the syntax

        arrayname [index] = value

-   Array index starts from 0 to size-1.

    You can assign values to array elements during declaration using the syntax

        arrayname := [size] type {value_0,value_1,…,value_size-1} 

-   You can also ignore the size parameter while declaring the array 
    with values by replacing size with … and the compiler will find the 
    length from the number of values. 
    
    Syntax is

        arrayname :=  […] type {value_0,value_1,…,value_size-1}

-   You can find the length of the array by using the syntax

        len(arrayname)
