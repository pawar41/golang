
# package.go
## setup package

- First, you should create the package calculation inside a folder with the same name under src folder of the go. The installed path of go can be found from the PATH variable.

    - For **linux / mac**, find the path by executing 
                
            echo $PATH 
        
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi9.png)
        
        So the path is **/usr/local/go**

    - For **windows**, find the path by executing 
        
            echo %GOROOT% 
        
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi11.png)
        
        Here the path is **C:\Go\ .**

    - Navigate to to the src folder
        (/usr/local/go/src for mac and C:\Go\src for windows). 
        Now from the code, the package name is calculation. 
        
        Go requires the package should be placed in a directory of 
        the same name under src directory. 
        
        Create a directory named calculation in src folder. 
    
    -  Inside calculation directory copy **calculation.go** file
        
            cp package/calculation.go path-to-src-folder 
        
        - inside calculation.go :
        
                package calculation
        
                func Do_add(num1 int, num2 int)(int) {
                    sum := num1 + num2
                    return sum
                }

    - Run the command **go install** from the 
        calculation directory which will compile the calculation.go

        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi12.png)


## run program package.go : 
    
- Now go back to package.go and run 
    
        go run package.go. 
        
    The output will be **Sum 25** .

- **Note** that the name of the function Do_add starts with a capital letter. 
    
    This is because in Go if the function name starts with a capital letter 
    it means other programs can see(access) it else other programs cannot 
    access it. 
    
    If the function name was do_add , then You would have got the error

    cannot refer to unexported name calculation.calc..
