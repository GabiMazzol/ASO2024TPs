#! /bin/bash 

#Calculadora 


echo "Escriba su primer numero: "

    read num1                                  #Ingreso los dos numeros para la operacion

echo "Escriba su segundo numero: "

    read num2 

    echo "1. suma " 
    echo "2. resta " 
    echo "3. multiplicacion "                   #pequeno menu para elegir cual operacion realizar
    echo "4. division " 

    echo "Seleccione una operacion a realizar: "
              
     read operacion 

     case $operacion in 

        1) suma=$((num1 + $num2))

    echo "El resultado de la suma es de : $suma";; 


      2) resta=$((num1 - $num2))

    echo "El resultado de la resta es de : $resta";;              #realizo las operaciones correspondientes


        3) multi=$((num1 * $num2))

    echo "El resultado de la multiplicacion es de : $multi";; 


         4) division=$((num1 / $num2))

    echo "El resultado de la division es de : $division";; 

esac 











