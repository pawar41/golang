
# read.go and write.go 


## run program read.go : 
- go to folder **read-write** ( inside **terminal** ) 

       cd read-write/

- run 

        go run read.go

## run program write.go : 
- go to folder **read-write** ( inside **terminal** ) 

       cd read-write/

- run 

        go run write.go









## inside read.go

```bash
package main
import "fmt"
import "io/ioutil"

func main() {  
    data, err := ioutil.ReadFile("data.txt")
    if err != nil {
        fmt.Println("File reading error", err)
        return
    }
    fmt.Println("Contents of file:\n", string(data))
}

```


## inside write.go


```bash
package main
import "fmt"
import "os"

func main() {  
    f, err := os.Create("file1.txt")
    if err != nil {
        fmt.Println(err)
        return
    }
    l, err := f.WriteString("Write Line one")
    if err != nil {
        fmt.Println(err)
        f.Close()
        return
    }
    fmt.Println(l, "bytes written")
    err = f.Close()
    if err != nil {
        fmt.Println(err)
        return
    }
}
```


## output read.go

```bash
Contents of file:
Line one
Line two
Line three

```


## output write.go

```bash
14 bytes written

```


## explanation

- Files are used to store data. Go allows us to read data from the files.

- Inside **read.go** the data, 

        err := ioutil.ReadFile(“data.txt”) 
    
    reads the data and returns a byte sequence. 
    While printing it is converted to string format. 

- Inside **write.go** a file is created, **file1.txt**. 
    If the file already exists then the contents of the file are truncated. 
    Writeline() is used to write the contents to the file. 
    After that, You closed the file using Close(). 