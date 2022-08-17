#!/bin/bash 

# Greeting and Menu

echo Welcome to Wich Sandwich!
sleep 1
echo " "
echo "Here are our Menu Options:"
echo " "
sleep 1
echo Veggie
echo Meatball
echo "Ham & Cheese"
echo Italian
echo " "
read -p  "Which sandwich would you like to make? " sandwich

# Create grocery list file

touch grocery_list.txt | echo "Your Grocery List:" > "grocery_list.txt"

# Create index array for sandwich ingedients 

veggie=( "italian seasoning" "red onion" "bell pepper" mayo "sourdough bread" mozzarella zuchini "garlic powder" "roasted red pepper spread" )

# if statement for each sandwich option with nested for loop 

if [ "$sandwich" == veggie ];
then 
	# loop over all ingredients in array

	for i in "${veggie[@]}"
	do
		read -p "Do you have $i? " ans
		
		# grep for yes/y in user input or append ingredient item to the groceryl list file

		echo $ans | grep -e "yes" -e "y" || echo "$i" >> grocery_list.txt
	done
fi


# Create grocery list and print it to the user screen, and farewell

echo " "
echo "One grocery list coming right up!"
echo "......"
echo " "
sleep 1
cat grocery_list.txt
echo " "
echo Thank you for using our service.
echo " "
echo "Bon Appetit!"
