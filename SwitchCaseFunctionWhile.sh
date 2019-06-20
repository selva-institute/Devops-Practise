#!/bin/bash
choice=0
while [ $choice -ne 6 ]
do
echo -e "\nArthmetic operation Menu\n1.Addition\n2.Subraction\n3.Multiplication\n4.Division\n5.Reminder\n6.Exit"
read -p "Enter the option from Menu : " choice
#Converting Upper case to Lower
#choice="$(echo $1 | tr '[:upper:]' '[:lower:]')"
getnum()
{
read -p "Enter First Number:" a
read -p "Enter Second Number:" b
}
case $choice in
1)
getnum
echo "Addition of the entered number is" `expr $a + $b`
;;
2)
getnum
echo "Difference of the entered number is" `expr $a - $b`
;;
3)
getnum
echo "Product of the entered number is" `expr $a \* $b`
;;
4)
getnum
echo "Quotient of the entered number is" `expr $a / $b`
;;
5)
getnum
echo "Reminder of the entered number is" `expr $a % $b`
;;
6)
exit;;
*)
echo "Enter valid Input and Try Again"
;;
esac
done
