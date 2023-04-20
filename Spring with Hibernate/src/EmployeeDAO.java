import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
public class EmployeeDAO 
{
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	public void insertemp(Employee e)
	{
	template.save(e);
	}
	public void updateemp(Employee e)
	{
	template.update(e);
	}
	public void deleteemp(Employee e)
	{
	template.delete(e);
	}
	public Employee displayempbyid(int id)
	{
	Employee emp=template.get(Employee.class,id);
	return emp;
	}

public List<Employee> displayall()
{
List<Employee> list=new ArrayList<Employee>();
list =(List<Employee>)template.loadAll(Employee.class);
return list;
}
}
