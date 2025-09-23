package web;

public class HelloWorld{
	
	public String helloWorld(String name){
		
		if ( name == null ) name = "Test";
		
		return "Hello World, My Name : "+name;
	}
	
}