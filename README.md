
# Golang beginner guide

#### Are you ~~new~~ to Golang ?
Not anymore ! We are going on wonderful ride 
& peeping into some basic examples of golang.




#
![Logo](https://miro.medium.com/max/2000/1*8bPiDNL1K1ZdK9O_T5IVKw.png)

## steps

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
    
    #### Ubuntu / Linux
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

#
## things to note :
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
## Acknowledgements

- project **begin** : **6**-**Dec**-20**21**

- [Written Guide](https://www.guru99.com/google-go-tutorial.html)

 - [my Github profile](https://github.com/pawar41)

## Authors

- [Barbara Thompson](https://www.guru99.com/barbara-thompson-2#)
- [pawar41](https://github.com/pawar41) | Shantanu Pawar
- [mail me](mailto:lunde@adobe.com) | shantanup410@gmail.com


