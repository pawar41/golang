
# hello.go
## run program : 
- go to folder **hello** ( inside **terminal** ) 

       cd hello/

- run 

        go run hello.go
## inside hello.go

```bash
    package main
    import ("fmt")

    func main() {
        fmt.Println("Hello World! This is my first Go program\n")
    }
```

## output

```bash
    Hello World! This is my first Go program
```

## explanation



- **package main** – Every Go Language program should start with a package name. 
    
    Go allows us to use packages in another go programs and hence supports code reusability. 
    
    Execution of a Go program begins with the code inside the package named main.

- **import fmt** – imports the package fmt. This package implements the I/O functions.

- **func main()** – This is the function from which program execution begins. 
    The main function should always be placed in the main package. 
    
    Under the main(),you can write the code inside { }.

- **fmt.Println** – This will print the text on the screen by the Println function of fmt.

