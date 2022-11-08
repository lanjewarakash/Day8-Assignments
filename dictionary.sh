#!/bin/bash/ -x


read  -p "random number is =" $((RANDOM%6+1))

declare -p dict
u=0
v=0
w=0
x=0
y=0
z=0
i=1
n=10
while ((u<$n && v<$n && w<$n && x<$n && y<$n && z<$n))
do
        randomCheck=$(($RANDOM%6+1))
        dict[$i]=$randomCheck
        ((i++))
        case $randomCheck in 
                        1 ) 
                              ((u++))
                        ;;
                        2 )
                              ((v++))
                        ;;  
                        3 )
                              ((w++))
                        ;;      
                        4 )
                              ((x++))
                        ;;
                        5 )
                              ((y++))
                        ;;
                        6 )
                              ((z++))
                        ;;
                        * )
                              echo "check repeat"
                        ;;
        esac
done

echo "all the values are: " ${dict[@]}
echo "the total number of die rolled = ${#dict[@]} times"
