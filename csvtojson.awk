#!/usr/bin/awk -f

BEGIN { FS=";" ;}

{
  if(FNR == 1)
  {
      split(FILENAME,array,".");
      
      printf("{\r\n\"%s\":[ \r\n",array[1]);
      for(i=1 ; i<= NF ; i++)
      {
	titre[i] = $i;
      }      
  }
  else
  { 
    jsonEscape($0);
    if(FNR > 2)
    {
      printf(",\r\n");
    }
    printf("{");
   
    for(i=1 ; i<= NF ; i++)
    {
      printf ("\"%s\" : \"%s\"",titre[i],$i);
      if(i < NF)
      {
	printf(",");
      }
      
    }
    printf("}\r\n");
  }
 
}

END{printf ("]\r\n}\r\n")}

function jsonEscape(str)
{
    gsub("/","//");
    gsub("\"","\\\"");
}

