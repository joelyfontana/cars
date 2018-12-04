#! /bin/bash
#cars.sh
#Joely Fontana

echo "My Old Cars Inventory System"

stay=true
while $stay 
do
	echo "1: Enter a Car"	
	echo "2: List Cars"
	echo "Q: Quit"
	read pickOne
	case $pickOne in 
	"1")
		echo "Enter the year of the car: "
		read year
		echo "Enter the make of the car: "
		read make
		echo "Enter the model of the car: "
		read model
		carName=$year" "$make" "$model
		echo $carName >>"My_Old_Cars.txt"
		;;
	"2")
		sort -n "My_Old_Cars.txt"
		;;
	"Q")
		stay=false
		;;
	esac
done
echo "Goodbye"

	

	 
