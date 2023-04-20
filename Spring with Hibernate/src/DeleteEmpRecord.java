import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DeleteEmpRecord 
{
	public static void main(String args[])
	{
	//ApplicationContext as IoC Container
	ApplicationContext applicationContext=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	EmployeeDAO employeedao=(EmployeeDAO)applicationContext.getBean("empdao");
	Employee emp=new Employee();
    Scanner sc=new Scanner(System.in);
    System.out.println("Enter Employee Id to delete");
    int id=sc.nextInt();
    emp.setId(1);
	employeedao.deleteemp(emp);
	System.out.println("Employee Record Deleted Successfully");
	}
}
