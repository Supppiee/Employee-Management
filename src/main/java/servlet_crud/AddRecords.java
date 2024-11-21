package servlet_crud;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insert")
public class AddRecords extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String salary = req.getParameter("salary");
		
		resp.getWriter().print(name+" "+email+" "+phone+" "+salary);

		employeeData emp = new employeeData();
		emp.setName(name);
		emp.setEmail(email);
		emp.setPhone(Long.parseLong(phone));
		emp.setSalary(Integer.parseInt(salary));

		new DataBaseLogic().add(emp);
		
		resp.getWriter().print("Records saved");
		req.getRequestDispatcher("index.html").forward(req, resp);
	}
}
