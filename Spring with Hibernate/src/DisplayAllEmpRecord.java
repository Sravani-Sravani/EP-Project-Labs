import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DisplayAllEmpRecord 
{
	public static void main(String args[])
	{
	//ApplicationContext as IoC Container
	ApplicationContext applicationContext=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	EmployeeDAO employeedao=(EmployeeDAO)applicationContext.getBean("empdao");
        List<Employee> list=employeedao.displayall();
System.out.println("Display All Records");
for(Employee emp:list)
{
System.out.println("Employee ID:"+emp.getId());
System.out.println("Employee NAME:"+emp.getName());
System.out.println("Employee GENDER:"+emp.getGender());
System.out.println("Employee DEPARTMENT:"+emp.getDepartment());
System.out.println("Employee SALARY:"+emp.getSalary());
}	


	}
}
