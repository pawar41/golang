
# var.go
## run program : 
- go to folder **hello** ( inside **terminal** ) 

       cd var/

- run 

        go run var.go
## inside var.go

```bash

package main
import "fmt"

func main() {
    //declaring a integer variable x
    var x int
    x=3 //assigning x the value 3 
    fmt.Println("x:", x) //prints 3
    
    //declaring a integer variable y with value 20 in a single statement and prints it
    var y int=20
    fmt.Println("y:", y)
    
    //declaring a variable z with value 50 and prints it
    //Here type int is not explicitly mentioned 
    var z=50
    fmt.Println("z:", z)
    
    //Multiple variables are assigned in single line- i with an integer and j with a string
    var i, j = 100,"hello"
    fmt.Println("i and j:", i,j)
}

```

## output

```bash

x: 3
y: 20
z: 50
i and j: 100 hello

```

## explanation



- ### **Data Types**
    Types(data types) represent the type of the value stored in a variable, type of the value a function returns, etc.
    
    There are three basic types in Go Language

    - **Numeric types** – Represent numeric values which includes integer, floating point, and complex values. Various numeric types are:

        -   int8 – 8 bit signed integers.
        -   int16 – 16 bit signed integers.
        -   int32 – 32 bit signed integers.
        -   int64 – 64 bit signed integers.
        -   uint8 – 8 bit unsigned integers.
        -   uint16 – 16 bit unsigned integers.
        -   uint32 – 32 bit unsigned integers.
        -   uint64 – 64 bit unsigned integers.
        -   float32 – 32 bit floating point numbers.
        -   float64 – 64 bit floating point numbers.
        -   complex64 – has float32 real and imaginary parts.
        -   complex128 – has float32 real and imaginary parts.

    - **String types** – Represents a sequence of bytes(characters). 

        You can do various operations on strings like string concatenation, extracting substring, etc

    - **Boolean types** – Represents 2 values, either true or false.
 
- ### Golang Interface

    Golang Interface is a collection of method signatures used by a Type to implement the behavior of objects. 
    The main goal of Golang interface is to provide method signatures with names, arguments, and return types. 
    It is up to a Type to declare and implement the method. 
    An interface in Golang can be declared using the keyword “interface.”
    
- ### Variables

    -   Variables point to a memory location which stores some kind of value. The type parameter(in the below syntax) represents the type of value that can be stored in the memory location.

        Variable can be declared using the syntax

            var <variable_name> <type>

    -   Once You declare a variable of a type You can assign the variable to any value of that type.

    -   You can also give an initial value to a variable during the declaration itself using

            var <variable_name> <type> = <value>

    -   If You declare the variable with an initial value, Go an infer the type of the variable from the type of value assigned. So You can omit the type during the declaration using the syntax

            var <variable_name> = <value>

    -   Also, You can declare multiple variables with the syntax

            var <variable_name1>, <variable_name2>  = <value1>, <value2>
    
    - Go Language also provides an easy way of declaring the variables with value by omitting the var keyword using

            <variable_name> := <value>

    - Note that You used := instead of =. You cannot use := just to assign a value to a variable which is already declared. := is used to declare and assign value.



## try it

- Create a file called assign.go with the following code 
        package main
        import ("fmt")

        func main() {
            a := 20
            fmt.Println(a)

            //gives error since a is already declared
            a := 30
            fmt.Println(a)
        }

- Execute go run assign.go to see the result as

        ./assign.go:7:4: no new variables on left side of :=		

- Variables declared without an initial value will have of 0 for numeric types, 
    false for Boolean and empty string for strings