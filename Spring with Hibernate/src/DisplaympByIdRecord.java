import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DisplaympByIdRecord 
{
	public static void main(String args[])
	{
	//ApplicationContext as IoC Container
	ApplicationContext applicationContext=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	EmployeeDAO employeedao=(EmployeeDAO)applicationContext.getBean("empdao");
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter Employee Id to display");
    int id=sc.nextInt();
    Employee emp=employeedao.displayempbyid(id);
    
    System.out.println("Employee ID:"+emp.getId());
System.out.println("Employee NAME:"+emp.getName());
System.out.println("Employee GENDER:"+emp.getGender());
System.out.println("Employee DEPARTMENT:"+emp.getDepartment());
System.out.println("Employee SALARY:"+emp.getSalary());
	


	}
}
