import java.util.*;
class test 
{
	public static void main(String[] args) 
	{
		
		Set<String> set=new HashSet<String>();
		Set<String> set2=new HashSet<String>();
		set.add("sajid");
		set.add("nashu");
//		set2.addAll(set);
set2=set;
		System.out.println("Hello World!"+set2);
	}
}
