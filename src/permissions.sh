#find /Users/Shared/Obsidian -type d -exec chmod 0775 {} \; && find /Users/Shared/Obsidian -type f -exec chmod 0664 {} \;

find $DATA_DIR -type d -exec chmod 0770 {} \; 
find $DATA_DIR -type f -exec chmod 0660 {} \;
chmod 0770 $DATA_DIR