while true
do
	echo "Select an option: "
	echo "1.Date"
	echo "2.Calendar"
	echo "3.List Files"
	echo "4.Present Working Directory"
	echo "5.Exit"
	read -p "Enter your choice (1-5): " choice

	case $choice in
		1)
			echo "Current Date and Time: "
			date
			;;

		2)
			echo "Calendar: "
			cal
			;;

		3)
			echo "List of Files: "
			ls
			;;

		4)
			echo "Present Working Directory: "
			pwd
			;;

		5)
			echo "Exiting..."
			break
			;;
		*)
			echo "Invalid choice"
			;;
	esac
	echo ""
done
