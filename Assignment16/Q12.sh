if [ -z "$1" ]; then
    echo "Please provide a filename as an argument."
    exit 1
fi

filename=$1

if [ -e "$filename" ]; then
    
    echo "Last modification time of $filename:"
    stat -c %y "$filename"
else
    
    echo "File '$filename' does not exist."
fi

