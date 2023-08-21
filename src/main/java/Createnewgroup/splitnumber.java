package Createnewgroup;

import java.util.ArrayList;
import java.util.Arrays;


public class splitnumber
{
	public void m1(Object number)
	{
		//NewGroupDB obj=new NewGroupDB();
		String str[]=((String) NewGroupDB.number).split(",");
		ArrayList<String> str1=new ArrayList<String>(Arrays.asList(str));
		for (String s : str1)
            System.out.println(s);
	}
}