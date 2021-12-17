### index

 - [setup steps](#setup-steps)
   1. [setup steps](#install-go)
      - [install Go ( Windows )](#windows)
      - [install Go ( Ubuntu / Linux )](#ubuntu-or-linux)
   2. [Download Repository](#download-repository)
   3. [Run Go Programs](#run-go-programs)
       - [program order](#program-order-list)
- [things to note](#things-to-note)
- [cheat sheet](#cheat-sheet)
- [Acknowledgements](#acknowledgements)
- [Authors](#authors)


# Golang beginner guide

#### Are you ~~new~~ to Golang ?
Not anymore ! We are going on wonderful ride 
& peeping into some basic examples of golang.




#
![Logo](https://go.dev/images/gophers/motorcycle.svg)

# setup steps

- ### install GO
 
    #### Windows 
    - Go to https://golang.org/dl/. Download the binary for your OS.

        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi1.png)
        #
    
    - Double click on the installer and click Run. 
    
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi2.png)
        #
    
    - Click Next 
    
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi3.png)
        #
    
    - Select the installation folder and click Next.
    
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi4.png)
        #
    
    - Click Finish once the installation is complete.
    
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi5.png)
        #
    
    - Once the installation is complete you can verify it by opening the terminal and typing
            
        ```bash
                go version
        ```
        #
        ![images](https://www.guru99.com/images/1/020819_0833_GoProgrammi6.png)
        #
        #
    
    #### Ubuntu or Linux
    - Go to https://golang.org/dl/. **Download** the binary for your OS.

        ![images](https://live.staticflickr.com/65535/51735745233_1f8b8f4ff4_z.jpg)
        #
    
    - **Extract** the archive you downloaded into **/usr/local**, creating a Go tree in /usr/local/go. 
        
        **Important**: This step will remove a previous installation at /usr/local/go, if any, prior to extracting. Please back up any data before proceeding.

        For example, run the following as root or through sudo:

                rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz


        #
    
    - **Add** /usr/local/go/bin to the **PATH environment** variable. 
        
        You can do this by adding the following line to your $HOME/.profile or /etc/profile 
         (for a system-wide installation): 

                export PATH=$PATH:/usr/local/go/bin

        **Note:** Changes made to a profile file may not apply until the next time you log into your computer. 
        To apply the changes immediately, just run the shell commands directly or execute them from the 
        profile using a command such as source $HOME/.profile. 
        #

    - **Verify** that you've installed Go by opening a command prompt and typing the following command: 
        
            go version


        #
    
- ### download repository
    ![images](https://live.staticflickr.com/65535/51735544076_6c4f201eee_z.jpg)

- ### extract zip
    ![images](https://live.staticflickr.com/65535/51735550496_7e5d280505_z.jpg)

- ### run Go programs
    in your terminal type :
    ```bash
        go run file.go
    ```
    **file.go** is **name of go file**, you want to run

    fro example :
        
    ```bash
        go run hello.go
    ```
        
    ```bash
        go run hello/hello.go
    ```
        
    ```bash
        go run var.go
    ```
### program order list

1. [hello.go](https://github.com/pawar41/golang/tree/main/hello)
2. [var.go](https://github.com/pawar41/golang/tree/main/var) 
3. [for.go](https://github.com/pawar41/golang/tree/main/for)
4. [if-else.go](https://github.com/pawar41/golang/tree/main/if-else)
5. [switch-case.go](https://github.com/pawar41/golang/tree/main/switch-case) 
6. [array.go](https://github.com/pawar41/golang/tree/main/array)
7. [slice.go](https://github.com/pawar41/golang/tree/main/slice)
8. [slice-size.go](https://github.com/pawar41/golang/tree/main/slice)
9. [function.go](https://github.com/pawar41/golang/tree/main/function/)
10. [defer.go](https://github.com/pawar41/golang/tree/main/defer/)
11. [stacking-defer.go](https://github.com/pawar41/golang/tree/main/defer/)
12. [pointers.go](https://github.com/pawar41/golang/tree/main/pointers/)
13. [pointers-ast.go](https://github.com/pawar41/golang/tree/main/pointers/)
14. [structures.go](https://github.com/pawar41/golang/tree/main/structures/)
15. [methods.go](https://github.com/pawar41/golang/tree/main/methods/)
16. [goroutines.go](https://github.com/pawar41/golang/tree/main/goroutines/)
17. [goroutines-disp.go](https://github.com/pawar41/golang/tree/main/goroutines/)
18. [channels.go](https://github.com/pawar41/golang/tree/main/channels/)
19. [channels-goroutines.go](https://github.com/pawar41/golang/tree/main/channels/)
20. [select.go](https://github.com/pawar41/golang/tree/main/select/)
21. [select-default.go](https://github.com/pawar41/golang/tree/main/select/)
22. [mutex.go](https://github.com/pawar41/golang/tree/main/mutex/)
23. [mutex-goroutines.go](https://github.com/pawar41/golang/tree/main/mutex/)
24. [error.go](https://github.com/pawar41/golang/tree/main/error/)
25. [error-custom.go](https://github.com/pawar41/golang/tree/main/error/)
26. [read.go](https://github.com/pawar41/golang/tree/main/read-write/)
27. [write.go](https://github.com/pawar41/golang/tree/main/read-write/)


#
## things to note
- each folder has a **name.go** file.
    **Go** files can be executed:

    ```bash
        go run file.go
    ```
- details of **.go** file is provided in **README.md** inside each folder.

- You can view input & expected output also in **README.md** or in **Go Programs Input-output** section of **github actions** .

    
    ![screen-shot](https://live.staticflickr.com/65535/51736266210_b3b1bc594a_k.jpg)
- recommended to actually type code ( **learn from mistakes** ).
#

## Cheat Sheet

| Topic             | Description                                    | Syntax                |
| :---              |     :---                                       |          :---         |
|||||
| **Basic types**   | Numeric, string, bool                          |        - - -          |
|||||
| **Variables**     | Declare and assign values to variables         | var variable_name type|
|                   |                                                | var variable_name type = value, 
|                   |                                                | var variable_name1, variable_name2 = 
|                   |                                                | value1, value2, 
|                   |                                                | variable_name := value
|||||
| **Constants** 	| Variables whose value cannot be changed 	     | const variable = value |
|                   | once assigned                                  |
|||||
| **For Loop** 	    | Execute statements in a loop. 	             | for initialisation_expression; 
|                   |                                                | evaluation_expression; 
|                   |                                                | iteration_expression{
|                   |                                                | // one or more statement
|                   |                                                | }
|||||
| **If else** 	    | It is a conditional statement 	             | if condition{
|                   |                                                | // statements_1
|                   |                                                | }else{
|                   |                                                | // statements_2
|                   |                                                | }
|||||
| **switch** 	    | Conditional statement with multiple cases 	 | switch expression {
|                   |                                                | case value_1:
|                   |                                                | statements_1
|                   |                                                | case value_2:
|                   |                                                | statements_2
|                   |                                                | case value_n:
|                   |                                                | statements_n
|                   |                                                | default:
|                   |                                                | statements_default
|                   |                                                | }
|||||
| **Array** 	    | Fixed size named sequence of elements of same  | arrayname := [size] type 
|                   | type                                           | {value_0,value_1,…,value_size-1}
|||||
| **Slice** 	    | Portion or segment of an array 	             | var slice_name [] type = 
|                   |                                                | array_name[start:end]
|||||
| **Functions** 	| Block of statements which performs a specific  | func function_name(parameter_1 type, 
|                   | task                                           | parameter_n type) return_type {
|                   |                                                | //statements
|                   |                                                | }
|||||
| **Packages**  	| Are used to organise the code. Increases code  | import package_nam
|                   | readability and reusability 	                 |
|||||
| **Defer** 	    | Defers the execution of a function till the    | defer function_name(parameter_list)
|                   |containing function finishes execution 	     |
|||||
| **Pointers** 	    | Stores the memory address of another variable. | var variable_name *type
|||||
| **Structure** 	| User defined datatype which itself contains one| type structname struct {
|                   | more element of the same or different type     | variable_1 variable_1_type
|                   |                                                | variable_2 variable_2_type
|                   |                                                | variable_n variable_n_type
|                   |                                                | }
|||||
| **Methods** 	    | A method is a function with a receiver argument| func (variable variabletype) 
|                   |                                                | methodName(parameter_list) { }
|||||
| **Goroutine** 	| A function which can run concurrently with  	 | go function_name(parameter_list)
|                   | other functions.                               | 
|||||
| **Channel** 	    | Way for functions to communicate with each     | Declare:
|                   | other. A medium to which one routine places    | ch := make(chan int)
|                   | data and is accessed by another routine. 	     | Send data to channel:
|                   |                                                | channel_variable <- variable_name
|                   |                                                | Receive from channel:
|                   |                                                | variable_name := <- channel_variable
|||||
| **Select**        | Switch statement which works on channels.      | select {
|                   | The case statements will be a channel operation| case x := <-chan1:
|                   | When any of the channel is ready with data,    | fmt.Println(x)
|                   | then the statement associated with that        | case y := <-chan2:
|                   | case is executed                               | fmt.Println(y) }
|||||
| **Mutex**         | Mutex is used when you don’t want to allow a   | mutex.Lock()
|                   | resource to be accessed by multiple subroutines| //statements
|                   | at the same time. Mutex has 2 methods– Lock and| mutex.Unlock(). 
|                   | Unlock                                         |
|||||
| **Read files**    | Reads the data and returns a byte sequence.    | Data, err := ioutil.ReadFile(filename) 
|||||
| **Write file**    | Writes data to a file                          | l, err := f.WriteString(text_to_write) 







#

## Acknowledgements

- project **begin** : **6**-**Dec**-20**21**

- [Written Guide](https://www.guru99.com/google-go-tutorial.html)

 - [my Github profile](https://github.com/pawar41)

## Authors

- [Barbara Thompson](https://www.guru99.com/barbara-thompson-2#)
- [pawar41](https://github.com/pawar41) | Shantanu Pawar
- [mail me](mailto:lunde@adobe.com) | shantanup410@gmail.com


