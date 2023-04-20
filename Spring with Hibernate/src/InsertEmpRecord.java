import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class InsertEmpRecord 
{
	public static void main(String args[])
	{
	//ApplicationContext as IoC Container
	ApplicationContext applicationContext=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	EmployeeDAO employeedao=(EmployeeDAO)applicationContext.getBean("empdao");
	Employee emp=new Employee();
	emp.setName("Sravani");
	emp.setGender("FEMALE");
	emp.setDepartment("CSE");
	emp.setSalary(47569.98);
	employeedao.insertemp(emp);
	System.out.println("Eml=ployee Record Inserted Successfully");
	}
}
