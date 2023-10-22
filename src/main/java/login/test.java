package login;

import java.io.IOException;

public class test {

	public static void main(String[] args) throws IOException {
		loginInfo test1=new loginInfo();
		loginpage login1=new loginpage(test1.getInfo());
		//studentpage welcomePage = new studentpage("user");
	}

}
