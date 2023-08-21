package Addnumberstogroup;

import java.util.ArrayList;
import java.util.Arrays;

public class splitnumber1 {
	static String s;
	//static ArrayList<String> str1;
    static String str[];
	int size;
	String arrayOfStrings[];

	public void m2()
	{
		//addnumbertogroupDB obj=new addnumbertogroupDB();
		String[] str=((String) addnumbertogroupDB.number).split(",");
		size=str.length;
		ArrayList<String> str1=new ArrayList<String>(Arrays.asList(str));
		
		Object[] arrayOfObjects = str1.toArray();
		String[] arrayOfStrings = str1.toArray(new String[str1.size()]);
		
		for (String s : arrayOfStrings)
            System.out.println(s);
		System.out.println(str.length);
	}
	public String[] getarray()
	{
		return arrayOfStrings;
	}
	
}