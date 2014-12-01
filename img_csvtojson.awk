#!/usr/bin/awk -f

BEGIN { FS=";" ; print "{" }

{
  if(FNR == 1)
  {
      for(i=1 ; i<= NF ; i++)
      {
	titre[i] = $i;
      }      
  }
  else
  {
    if(FNR == 2)
    {
      print "\"images\":{ ";  
    }
    else
    {
      print ","
      print "\"images\":{ ";
    }
    
    for(i=1 ; i<= NF ; i++)
    {
      if(i < NF)
	print "\""titre[i]"\"" ":" "\""$i"\",";
      else
	print "\""titre[i]"\"" ":" "\""$i"\"";
      
    }
    
    print "}";

  }
 
}

END{print "}"}



