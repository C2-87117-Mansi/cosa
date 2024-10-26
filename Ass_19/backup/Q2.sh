

address_book="address.txt"

add_con() {
	echo "enter name"
	read name
	echo "enter email"
	read email
	echo "mobile_no"
	read mobile
	echo "$name,$email,$mobile" >> $address_book

}
view_con() {

	
		cat $address_book
	

}
search_con() {
          echo "enter to search "
	      read name
          grep -i '$name' $address_book

 }
delete_con() {
         echo "enter the name to delete"
           
         read del_name
         sed -i "/$del_name/Id" "$address_book" && echo "Contact deleted!" || echo "Contact not found."
    
           

}
count_contact() {
           count=$(wc -l < $address_book)
	   echo "Total no of contact : $count"

}

while true 
do
	echo "Menu driven "
	echo "1.Add a new contact"
	echo "2.view all contact"
	echo "3.search contact"
	echo "4.delete a contact"
	echo "5.count of contact"
	echo "6.Exit"

	echo "enter your choice : "
	read choice

	case $choice in
		1) add_con ;;
		2) view_con ;;
        3) search_con ;;
        4) delete_con ;;

        5) count_contact ;;
        6) exit 0 ;;
        *) echo "invalid" ;; 

	esac

done


