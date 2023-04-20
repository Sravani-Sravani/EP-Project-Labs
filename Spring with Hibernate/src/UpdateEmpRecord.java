import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class UpdateEmpRecord 
{
	public static void main(String args[])
	{
	//ApplicationContext as IoC Container
	ApplicationContext applicationContext=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	EmployeeDAO employeedao=(EmployeeDAO)applicationContext.getBean("empdao");
	Employee emp=new Employee();
        emp.setId(1);
	emp.setName("Gowthami");
	emp.setGender("FEMALE");
    emp.setDepartment("CSE");
    emp.setSalary(34568.98);
	employeedao.updateemp(emp);
	System.out.println("Employee Record Updated Successfully");
	}
}
