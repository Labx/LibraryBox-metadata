#!/usr/bin/awk -f

BEGIN { FS=";" ; }
{
    print $0;
    gsub("/","//");
   # gsub("\\\\","\\\\");
    gsub("\"","\\\"");
 
    
    
    print $0;

    print $0;

}
END{}



