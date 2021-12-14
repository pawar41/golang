
# pointers.go and pointers-ast.go
## run program pointers.go : 
- go to folder **pointers** ( inside **terminal** ) 

       cd pointers/

- run 

        go run pointers.go


## run program pointers-ast.go : 
- go to folder **pointers** ( inside **terminal** ) 

       cd pointers/

- run 

        go run pointers-ast.go





## inside pointers.go


```bash

package main
import "fmt"

func main() {
	a := 20
	fmt.Println("Address:",&a)
	fmt.Println("Value:",a)
}

```


## inside pointers-ast.go


```bash

package main
import "fmt"

func main() {
	//Create an integer variable a with value 20
	a := 20
	
	//Create a pointer variable b and assigned the address of a
	var b *int = &a

	//print address of a(&a) and value of a  
	fmt.Println("Address of a:",&a)
	fmt.Println("Value of a:",a)

	//print b which contains the memory address of a i.e. &a
	fmt.Println("Address of pointer b:",b)

	//*b prints the value in memory address which b contains i.e. the value of a
	fmt.Println("Value of pointer b",*b)

	//increment the value of variable a using the variable b
	*b = *b+1

	//prints the new value using a and *b
	fmt.Println("Value of pointer b",*b)
	fmt.Println("Value of a:",a)}


```



## output pointers.go

```bash
Address: 0xc000078008
Value: 20

```

## output pointers-ast.go

```bash
Address of a: 0x416020
Value of a: 20
Address of pointer b: 0x416020
Value of pointer b 20
Value of pointer b 21
Value of a: 21

```



## explanation


-   Before explaining pointers let’s will first discuss ‘&’ operator. 
    The ‘&’ operator is used to get the address of a variable. 
    It means ‘&a’ will print the memory address of variable a.

    example: **pointers.go**

- A pointer variable stores the memory address of another variable. 
    You can define a pointer using the syntax

	    var variable_name *type

- The asterisk(*) represents the variable is a pointer. 
    
    example: **pointers-ast.go**
