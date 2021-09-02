# Shell Scripting 

#### What is Bash And Shell ?
- Bash is considered to be a terminal instance which gives us much more streamlined way of using unix/linux OS.
- Shell is basically interpreter of commands.

#### Basic Linux Commands - 
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



## Important Things To Note - 

- First thing which we do is we define which Interpreter are we gonna use. It is defined using ` #! ` Also Known as Shebang and It is followed by location of the interpreter i.e. `#!/bin/bash`.


## Basics of Shell Scripting -

#### Variables - 
- ` NAME="This is a variable" ` or `SPORT="Base"`
- To Print out that variable `echo "Variable = $NAME" ` OR `echo $NAME`.
- We also sometimes surround the variable with {} if we want to concatinate something to the value of variable e.g. `echo ${SPORT}ball` // It will print out = `Baseball`.

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
    `if [ condition ]; (Remember to leave space after "[" while writing down the condition)
     then 
        Execute This
     fi
    `
- if-else Syntax = 
    `if [ condition ]; (Remember to leave space after "[" while writing down the condition)
     then 
        Execute This
     else
        Execute This
     fi
    `

