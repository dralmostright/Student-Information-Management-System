public class test {

	public int a=10;
	public int b=10;
	
	test(){
		this(10,20);
		System.out.println("Hello from default");
	}
	
	test(int a, int b){
		this.a=10;
		this.b=10;
		System.out.println("Hello from parameterized");
	}
	
	public static void Main (String [] args){
		test test= new test();
	}
}
