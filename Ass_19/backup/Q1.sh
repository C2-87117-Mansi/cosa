
list_files() {
       echo "enter the path"
       read path
	   echo "ls -l $path"
       
}

file_info() {
            echo "enter path"
            read path
           
                
            stat "$path"
        
    

                 
}
create_dir() {
           echo "enter the dir path : "
           read path
           mkdir -p "$path"
           echo "directory created"
          

}
create_file() {
         echo "enter the path to create file"
         read path
         echo "enter name"
         read name
         cat  > "$path/$name"  
         echo "file created"
         
}
copy_file() {
           echo "enter name of file"
           read src_file
           echo "enter path to copy the file"
           read dest_file
           if [[ -f "$src_file" ]]
           then
                 cp "$src_file" "$dest_file"
           elif [[ -d "$src_file" ]]
           then 
               cp "$src_file" "$dest_file"
           else
               echo "path invalid"
           fi
}
move_rename() {
           echo "enter the path"
           read src_path
           echo "enter the path to copy file"
           read dest_path
           mv "$src_path" "$dest_path"



}
delete_file() {

   echo "enter file you want to delete :" 
   if [[ -d "$path" ]]
   then 
        rm -rf "$path"
   elif [[ -f "$path" ]]
   then 
        rm  "$path"
   else
        "invalid "
   fi
}
while true 
do
	echo "File and directory menu"

	echo "1.List files and directories in given path "
	echo "2.Display information about a file or directory"
	echo "3.create a directory"
	echo "4.create a file"
	echo "5.copy a file"
	echo "6.move/rename a file or directory"
	echo "7.delete a file or directory"
	echo "8.exit"
	
	echo "enter your choice"
	read choice

        case $choice in
		1)
		   list_files ;;

		2)
	       file_info ;;
		3)
	       create_dir ;;
		4)
	       create_file ;;
		5)
	       copy_file ;;
		6) move_rename ;;
		7) delete_fd ;;
		8) echo "Exit" ;;
		*) echo "invalid"
	 esac
 done
		     
