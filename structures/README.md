
# structures.go 
## run program structures.go : 
- go to folder **structures** ( inside **terminal** ) 

       cd structures/

- run 

        go run structures.go






## inside pointers.go


```bash

package main
import "fmt"

//declared the structure named emp
type emp struct {
        name string
        address string
        age int
}       

//function which accepts variable of emp type and prints name property
func display(e emp) {
          fmt.Println(e.name)
}

func main() {
// declares a variable, empdata1, of the type emp
var empdata1 emp
//assign values to members of empdata1
empdata1.name = "John"
empdata1.address = "Street-1, London"
empdata1.age = 30

//declares and assign values to variable empdata2 of type emp
empdata2 := emp{"Raj", "Building-1, Paris", 25}

//prints the member name of empdata1 and empdata2 using display function
display(empdata1)
display(empdata2)
}

```


## output 

```bash
John
Raj

```



## explanation


- A **Structure** is a user defined datatype which itself contains one more element 
    of the same or different type.

- Using a structure is a 2 step process.

    - First, create(declare) a structure type

    - Second, create variables of that type to store values.

- Structures are mainly used when you want to store related data together.

- Consider a piece of employee information which has name, age, and address. You can handle this in 2 ways

- Create 3 arrays – one array stores the names of employees, one stores age and the third one stores age.

- Declare a structure type with 3 fields- name, address, and age. Create an array of that structure type where each element is a structure object having name, address, and age.

- The first approach is not efficient. In these kinds of scenarios, structures are more convenient.

- The syntax for declaring a structure is

        type structname struct {

            variable_1 variable_1_type
            variable_2 variable_2_type
            variable_n variable_n_type
        }

- An example of a structure declaration is

        type emp struct {
            name string
            address string
            age int
        }

- Here a new user defined type named emp is created. 
    Now, you can create variables of the type emp using the syntax

	    var variable_name struct_name

- An example is

        var empdata1 emp 

- You can set values for the empdata1 as

        empdata1.name = "John"
            empdata1.address = "Street-1, Bangalore"
            empdata1.age = 30

- You can also create a structure variable and assign values by

        empdata2 := emp{"Raj", "Building-1, Delhi", 25}

- Here, you need to maintain the order of elements. Raj will be mapped to name, next element to address and the last one to age.
