#!/bin/bash

menue(){
echo 1. writing to a file
echo 2. printing the content of the file
echo 3. rename name of the file
echo 4. Exit the program
}



choice="0"


write_to_file(){
echo -e "Enter the name of the file: \c"
read file_name

echo -e "Please Enter somthing to write in file: \c"
read contents
while [ $contents != "end" ]; do
	echo $contents >> $file_name
	read contents
done

	#sudo nano $file_name
}

print_file_content(){
echo -e "Enter the name of the file: \c"
read file_name
cat $file_name

}
rename_file(){
echo -e "Enter the name of the old file: \c"
read old_file_name
echo -e "Enter the name of the new file: \c"
read new_file_name

sudo mv $old_file_name $new_file_name
}
while [ $choice != "4" ]; do

	if [ $choice = "1" ]; then
		write_to_file
	elif [ $choice = "2" ]; then
		print_file_content
	elif [ $choice = "3" ]; then
		rename_file
	fi
	menue
	echo -e "Please Enter a Number From 1-4: \c"
	read choice
	
done
#sudo nano f1.txt
