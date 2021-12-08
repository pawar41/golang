PROJECT_FILES=$PATH_GO
export PROJECT_FILES

PATH_GO=( $PROJECT_FILES/hello/hello.go $PROJECT_FILES/var/var.go $PROJECT_FILES/if-else/if-else.go $PROJECT_FILES/switch-case/switch-case.go $PROJECT_FILES/array/array.go $PROJECT_FILES/slice/slice.go $PROJECT_FILES/slice/slice-size.go $PROJECT_FILES/function/function.go $PROJECT_FILES/package/package.go $PROJECT_FILES/defer/defer.go $PROJECT_FILES/defer/stacking-defer.go $PROJECT_FILES/pointers/pointers.go $PROJECT_FILES/pointers/pointers-ast.go $PROJECT_FILES/structures/structures.go $PROJECT_FILES/methods/methods.go $PROJECT_FILES/goroutines/goroutines.go $PROJECT_FILES/goroutines/goroutines-disp.go $PROJECT_FILES/channels/channels.go $PROJECT_FILES/channels/channels-goroutines.go $PROJECT_FILES/select/select.go $PROJECT_FILES/select/select-default.go $PROJECT_FILES/mutex/mutex.go $PROJECT_FILES/mutex/mutex-goroutines.go $PROJECT_FILES/error/error.go $PROJECT_FILES/error/error-custom.go $PROJECT_FILES/read-write/read.go $PROJECT_FILES/read-write/write.go )
 

 
 print_out () {
 
  cd ${PATH_GO[ $i ]}
  echo -e "\n\n\n ========================================== FILE INPUT ==========================================  \n\n\n"
  echo -e "Program no: $i \n\n"
  
  cat ${PATH_GO[ $i ]}
  echo -e "\n\n\n ========================================== FILE OUTPUT ==========================================  \n\n\n"
        
  go run ${PATH_GO[ $i ]}
}



CURRENT_DIR=$(pwd)
export CURRENT_DIR

touch data.txt
echo 'this is line one' > data.txt

# echo ${#PATH_GO[@]}
          
for i in `seq 0 $((${#PATH_GO[@]}-1))`;
do
    print_out
done

cd $CURRENT_DIR
          

          
