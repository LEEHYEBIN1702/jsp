package emp.serv;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpInsert() {
		super();

	}
    //등록페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<JobVO> jobList = JobDAO.getInstance().selectAll();
		List<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("/emp/empInsert.jsp")
		       .forward(request, response);
		
	}
    //등록
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        //파라미터 VO담기
		String hire_date = request.getParameter("hire_date");		
		//builder 객체생성과 초기화
		String empid = request.getParameter("employee_id");
		String email = request.getParameter("email");
		
		EmpVO empVO = EmpVO.builder()
				     .last_name(request.getParameter("last_name"))
				     .department_id(request.getParameter("department_id"))
				     .email(request.getParameter("email"))
				     .employee_id(request.getParameter("employee_id"))
				     .hire_date(DateUtil.toDate(hire_date))
				     .job_id(request.getParameter("job_id"))
				     .build();
		EmpDAO.getInstance().insert(empVO);
		response.sendRedirect("EmpList");
//		request.getRequestDispatcher("EmpList").forward(request, response);	
		response.sendRedirect("EmpList");
	}

}
