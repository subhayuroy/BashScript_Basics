#! /usr/bin/bash
echo Hi I am Subhayu!

#Variables - they should be uppercase(by convention)
NAME="Subhayu"
echo "My name is ${NAME}"
echo "My name is $NAME"

#User-input
read -p "Enter your name: " Name
echo "Hello $Name, nice to meet you!"

#Simple "if" statement
if [ "$NAME" == "Subhayu" ]
then
	echo "Your name is Subh"
fi

#if-else
if [ "$Name" == "Subhayu" ]
then
	echo "Your name is Subh"
else
	echo "Your name is not Subh"
fi

#else-if(elif)
if [ "$Name" == "Subhayu" ]
then
	echo "Your name is Subh"
elif [ "$Name" == "Rajesh" ]
then
	echo "Your name is Rajesh"
else
	echo "Your name is neither Subh nor Raj"
fi

#Comparison
#val1 -eq val2 returns TRUE if the values are equal
#val1 -ne val2 returns TRUE if the values are not equal
#val1 -gt val2 returns TRUE if val1 is greater than val2
#val1 -ge val2 returns TRUE if  val1 is greater than or equal to val2
#val1 -lt val2 returns TRUE if val1 is less than val2
#val1 -le val2 returns TRUE if val1 is less than or equal to val2
read -p "Enter a number: " Num1
Num2=5
if [ "$Num1" -gt "$Num2" ]
then
	echo "$Num1 is greater than $Num2"
else
	echo "$Num1 is lesser than $Num2"
fi

#File Conditions
FILE="test.txt"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does not exists"
fi

# -d file TRUE if file is a directory
# -e file TRUE if the file exists
# -f file TRUE if the provided string is a file
# -g file TRUE if the group id is set on a file
# -r file TRUE if the file is readable
# -s file TRUE if the file has a non-zero size
# -u TRUE if the user id is set on a file
# -w TRUE if the file is writable
# -x TRUE if the file is an executable

#Case Statement
read -p "Are you 18 or over? Y/N " Answer
case "$Answer" in
 [yY] | [yY][eE][sS])
  echo "You are an adult"
   ;;
 [nN] | [nN][oO])
  echo "You are a teenager"
   ;;
 *)
  echo "Please enter y/yes or n/no"
   ;;
esac

#FOR Loop
Names="Subhayu Taran Shashwat Dhananjay"
for name in $Names
 do
   echo "Hello $name"
  done

#FOR Loop to rename Files
Files=$(ls *.txt)
New="new"
for file in $Files
  do
    echo "Renaming $file to new-$file"
    mv $file $New-$file
  done

#WHILE Loop
#Read through a file line-by-line
Line=1
while read -r Current_Line
  do
    echo "$Line: $Current_Line"
    ((Line++))
  done < "./new-new-1.txt"

#Function
function sayHello() {
    echo "Hello everyone"
}

sayHello

#Function parameter
function welcome() {
  echo "Hello, I am $1 and I welcome $2"
}
read -p "Enter your name= " NM
read -p "You are welcoming whom? " WN
welcome $NM $WN

#Create folder and Write to a file
mkdir Work
touch "Work/Tough.txt"
echo "Hello World" >> "Work/Tough.txt"
echo "Created Work/"

#Calculate 2^5
base=2
power=5
for((i=1;i<=$power;i++))
    do
      base=$((base * base))
    done
echo "The term is $base"
