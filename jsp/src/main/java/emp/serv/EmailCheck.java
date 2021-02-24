package emp.serv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.EmpDAO;
import emp.dao.EmpVO;

public class EmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmailCheck() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//email 파라미터 받기
		response.setContentType("text/html; charset=UTF-8");
		EmpVO empVO = EmpDAO.getInstance().selectOneByEmail("email");
		if(empVO == null) {
			response.getWriter().print("사용할 수 있는 이메일");
		} else {
			response.getWriter().print("사용할 수 없는 이메일");	
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
