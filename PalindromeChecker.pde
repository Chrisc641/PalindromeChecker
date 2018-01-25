public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(onlyLetters(lines[i]))==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  if(word.equalsIgnoreCase(reverse(word)))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
 String hold = new String();  
 for(int i = 1; i < str.length() + 1; i++)
 {
   hold = hold + str.substring(str.length() - i, str.length() - i + 1);
 }
 return hold;
}

public String onlyLetters(String sString)
{
 String hold = new String(); 
 for(int i = 0; i < sString.length(); i++)
 {
   if(Character.isLetter(sString.charAt(i)))
   {
     hold = hold + sString.substring(i, i + 1);
   }
 }
 return hold;
}