
# error.go and error-custom.go 
## run program error.go : 
- go to folder **error** ( inside **terminal** ) 

       cd error/

- run 

        go run error.go

## run program error-custom.go : 
- go to folder **error** ( inside **terminal** ) 

       cd error/

- run 

        go run error-custom.go









## inside error.go

```bash
package main
import "fmt"
import "os"

//function accepts a filename and tries to open it.
func fileopen(name string) {
    f, er := os.Open(name)

    //er will be nil if the file exists else it returns an error object  
    if er != nil {
        fmt.Println(er)
        return
    }else{
    	fmt.Println("file opened", f.Name())
    }
}

func main() {  
    fileopen("invalid.txt")
}

```


## inside error-custom.go


```bash
package main
import "fmt"
import "os"
import "errors"

//function accepts a filename and tries to open it.
func fileopen(name string) (string, error) {
    f, er := os.Open(name)

    //er will be nil if the file exists else it returns an error object  
    if er != nil {
        //created a new error object and returns it  
        return "", errors.New("Custom error message: File name is wrong")
    }else{
    	return f.Name(),nil
    }
}

func main() {  
    //receives custom error or nil after trying to open the file
    filename, error := fileopen("invalid.txt")
    if error != nil {
        fmt.Println(error)
    }else{
    	fmt.Println("file opened", filename)
    }  
}
```


## output error.go

```bash
open /invalid.txt: no such file or directory
```


## output error-custom.go

```bash
Custom error message:File name is wrong
```

- **note:** The result could be different when you execute it but the final result won’t be 30.

## explanation


- Errors are abnormal conditions 
    like closing a file which is not opened, open a file which doesn’t exist, etc. 
    Functions usually return errors as the last return value.

- Inside **error.go** we tried to open a non-existing file, 
    and it returned the error to er variable. 
    If the file is valid, then the error will be null

- Using this feature, 
    you can create custom errors. 
    
    This is done by using New() of error package. 
    Above program is rewritten inside **error-custom** to make use of custom errors.

- Inside **error-custom** the area() returns the area of a square. 
    If the input is less than 1 then area() returns an error message.