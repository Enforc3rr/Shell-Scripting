# Shell Scripting 

### What is Bash And Shell ?
- Bash is considered to be a terminal instance which gives us much more streamlined way of using unix/linux OS.
- Shell is basically interpreter of commands.

### Basic Linux Commands - 
- `cd` to change directory
- `pwd` to get the current working directory
- `ls` to list out items
- `cp` to copy files 
- `mv` to move files 
- `rm` to remove files 
- `echo` basically System.out.println of linux world
- `mkdir` to create a directory 
- `touch` to make a file
- `chmod` to change/set file permissions
- `cURL` to download a file from server
- `cat` to read files sequentially and write them to std output.
- `grep` It's basically used to run regex search on txt files.
- `alias` to provide shortcut to run a particular long command or a particular script : `alias testScript5="./Script5.sh"`

- For More : `https://devopscube.com/list-of-linux-commands-every-developer-should-know/`

#### Permissions - 
- To Change the permission of a file/directory , we use `chmod [options] [code] fileName` .
- Use `ls -l fileName` OR `ls -l` to get details about a file or list of files in a directory.
- Example :
    1) `-rwxr-xr-x 1 user group  112 Sep  2 22:18 PingSweep.sh`
    2) `drwxrwxr-x 2 user group  112 Sep  Size 20:18 MoreScripts`
- Options are of Three Different types :
    1) `-R (Recursive)` : When we want to change permission of a file including it's parent directory and all files present in it.
    2) `-f (force)` : When we want to change the permissions of a file by force.
    3) `-v (verbose)` 
-There are Three Different Types Of account privelage holders =
    1) Owner
    2) Group
    3) Others
-There are Three Different Types Of account permissions a file/directory can hold =
    1) read (r) : 4
    2) write (2) : 2
    3) execute (x) : 1
    So , In order to make owner to be able to `rwx` on a file while not allowing group to be able to write on a file and others to only view the file . we can do it by `chmod ` 
-Here Entire Line is divided into Multiple Parts 
    - `-rwxr-xr-x` being the permissions it is comprised of multiple elements like first `-` denotes whether It is a directory(for direc it would be `d`) or a file.
        - After initial `-/d` , everything is basically paired up and in example 1 : `rwx` will denote permission of owner , while next three elements will denote the permissions of group and last three denote that of others.


## Important Things To Note - 

- First thing which we do is we define which Interpreter are we gonna use. It is defined using `#!` Also Known as Shebang and It is followed by location of the interpreter i.e. `#!/bin/bash`.
- While when we are present in any loop , it isn't really convenient that we use variable name with CAPS we can use variable name with small letters.




## Basics of Shell Scripting -

#### Variables - 
- ` NAME="This is a variable" ` or `SPORT="Base"`
- To Print out that variable `echo "Variable = $NAME" ` OR `echo $NAME`.
- We also sometimes surround the variable with {} if we want to concatinate something to the value of variable e.g. `echo ${SPORT}ball` // It will print out = `Baseball`.
- To use mathematical expressions , we use `expr` e.g. `expr $num1 + $num2`(surrounded by backtick) OR `sum=$(($num1 + $num2))` OR `sum=$(expr $num1 + $num2)`.


#### Arrays - 
- To Define Arrays : `ARR=("This" "is" "An" "Array" "Separated" "By" "Space")` 
- To Select a particular element : `${ARR[0]}`
- To Iterate Till The The END : `${ARR[@]}`
- To Get Length : `${#ARR[@]}`


#### Comments -
- We simply use `#` like python.

#### UserInput - 
- To Read The Data (Like That Of Java) = 
    - `read -p "Enter Your Name : " NAME` // `-p` is for Prompt.
- To Read The Data From Arguments = 
    - You can access passed arguments with $n where n is the argument number - 1, 2, 3, .... You pass the arguments just like you would with any other command.
    - Example = To Access First Argument `echo "This is First Argument $1"` 


#### If & If/Else -
- if Syntax =
    ```
     if [ condition ]; (Remember to leave space after "[" while writing down the condition)
     then 
        Execute This
     fi
    ```
- if-else Syntax = 
    ```
     if [ condition ]; (Remember to leave space after "[" while writing down the condition)
     then 
        Execute This
     else
        Execute This
     fi
    ```
#### While Loop -
- Works like how we expect it to work in any programming language.
- Syntax : 
```
while [ condition ];
do 
    command
done
```
- Example : 
```
#!/bin/sh
a=0
while [ $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done
```

#### For Loop -
- Syntax : 
```
for VARIABLE in $("THIS" "IS" "AN" "ARRAY");
do 
    commands
done
```
- Example1 : To Print Elements of A list 
```
ARR=("THIS" "IS" "A" "LIST")
for ITEM in ${ARR[@]}
do 
    echo $ITEM
done
```
- Example2 : To Print Numbers 
```
for NUMBER in $(seq 1 10)
do
    echo $NUMBER
done
``` 

#### Switch Case -
- Syntax : 
```
case expression in 
    pattern1 )
        command ;;
    pattern2 )
        command ;;
    *)
        defaultCommand ;;
csae
```
- Yes we can us break and continue keyword like java or nodejs when we are inside of a loop.
- Example : 
```
  read 
  case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac

```

#### Menu -
- It's basically like switch case but is lil more convenient to use.
- `$REPLY` here contains the option number that was selected (It doesn't follow the serialization convection of Arrays).
- Example : 
```
EXTENSIONS=("ZIP" "RAR" "EXE" "TAR")

select option in ${EXTENSIONS[@]};
do
    echo "Selected Extension Number is $REPLY"
    echo "Selected Extension is $option"
done
```


#### Test Scripts -
- Exits with a status of 0 (true) or 1 (false) depending on the evaluation of EXPR. (run `help test` for more information)
- Example : To check if a particular directory exists or not exists
    ```
    if [ -d /usr/bin/dir ];
    then
        echo "Directory exists"
    else
        echo "Directory does not exist"
    fi
    ```


#### Functions -
- Syntax (word function isn't really important to write): 
```
function funcName(){
    #CODE
}
```
- To call the function simply type `funcName` with out `()` . 
- Passing parameters to function is similar to passing of args and inside the function it is also referenced in similar fashion i.e. $1 , $2 , etc. And Here $0 will return name of scriptfile.



