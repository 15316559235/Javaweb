import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import demo.s;

@WebServlet(name="sservlet",urlPatterns={"/s.do"})
public class sservlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String chang = request.getParameter("chang");
		String kuan = request.getParameter("kuan");
		int s=Integer.parseInt(chang)*Integer.parseInt(kuan);
		s a=new s();
		a.setchang(chang);
		a.setkuan(kuan);
		a.sets(s);
		HttpSession session=request.getSession();
		session.setAttribute("a",a);
		RequestDispatcher ss=request.getRequestDispatcher("show.jsp");
		ss.forward(request, response);
	}

}

