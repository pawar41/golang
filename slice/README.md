
# slice.go slice-size.go
## run program slice.go : 
- go to folder **slice** ( inside **terminal** ) 

       cd slice/

- run 

        go run slice.go



## run program slice-size.go : 
- go to folder **slice** ( inside **terminal** ) 

       cd slice/

- run 

        go run slice-size.go
## inside slice.go


```bash

package main
import "fmt"

func main() {  
    // declaring array
    a := [5] string {"one", "two", "three", "four", "five"}
    fmt.Println("Array after creation:",a)

    var b [] string = a[1:4] //created a slice named b
    fmt.Println("Slice after creation:",b)

    b[0]="changed" // changed the slice data
    fmt.Println("Slice after modifying:",b)
    fmt.Println("Array after slice modification:",a)
}


```



## inside slice-size.go


```bash

package main
import "fmt"

func main() {  
	a := [5] string {"1","2","3","4","5"}
	slice_a := a[1:3]
	b := [5] string {"one","two","three","four","five"}
	slice_b := b[1:3]

    fmt.Println("Slice_a:", slice_a)
    fmt.Println("Slice_b:", slice_b)
    fmt.Println("Length of slice_a:", len(slice_a))
    fmt.Println("Length of slice_b:", len(slice_b))

    slice_a = append(slice_a,slice_b...) // appending slice
    fmt.Println("New Slice_a after appending slice_b :", slice_a)
    
    slice_a = append(slice_a,"text1") // appending value
    fmt.Println("New Slice_a after appending text1 :", slice_a)
}

```

## output slice.go

```bash
Array after creation: [one two three four five]
Slice after creation: [two three four]
Slice after modifying: [changed three four]
Array after slice modification: [one changed three four five]

```

## output slice-size.go

```bash
Slice_a: [2 3]
Slice_b: [two three]
Length of slice_a: 2
Length of slice_b: 2
New Slice_a after appending slice_b : [2 3 two three]
New Slice_a after appending text1 : [2 3 two three text1]

```

## explanation


-   A slice is a portion or segment of an array. 
    Or it is a view or partial view of an underlying array to which it points. 
    You can access the elements of a slice using the slice name and index 
    number just as you do in an array. 
-   You cannot change the length of an array, 
    but you can change the size of a slice.

-   Contents of a slice are actually the pointers to the elements of an array. 
    It means if you change any element in a slice, 
    the underlying array contents also will be affected.

-   The syntax for creating a slice is

        var slice_name [] type = array_name[start:end]

-   This will create a slice named slice_name from an 
    array named array_name with the elements at the index start to end-1.

-   The **slice.go** will create a slice from the array and print it.

-   There are certain functions like Golang len, 
    Golang append which you can apply on slices

    - len(slice_name) – returns the length of the slice

    - append(slice_name, value_1, value_2) – Golang append is used to append value_1 and value_2 to an existing slice.

    - append(slice_nale1,slice_name2…) – appends slice_name2 to slice_name1

-   The **slice-size.go** first creates 2 slices and printed its length. 
    Then it appended one slice to other and then appended a string to the 
    resulting slice.
