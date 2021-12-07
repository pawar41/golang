package main
import "fmt"
//the package to be created
import "calculation"

//package/package.go:4:8: cannot find package "calculation" in any of:
//	/usr/lib/go-1.13/src/calculation (from $GOROOT)
//	/home/shawn/go/src/calculation (from $GOPATH)

func main() {  
	x,y := 15,10
	//the package will have function Do_add()
sum := calculation.Do_add(x,y)
fmt.Println("Sum",sum) 
}