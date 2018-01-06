package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/customer/menu/cm-recocm")
public class CmRecocm extends HttpServlet {
	
	@Override
	protected void doPost(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		
		String _agree1 =request.getParameter("check1");
		String _agree2 =request.getParameter("check2");
		String _agree3 =request.getParameter("check3");
		String _agree4 =request.getParameter("check4");
		String _agree5 =request.getParameter("check5");
		String _agree6 =request.getParameter("check6");
		String _agree7 =request.getParameter("check7");
		String _agree8 =request.getParameter("check8");
		String _agree9 =request.getParameter("check9");
		String _agree10 =request.getParameter("check10");
		String _agree11 =request.getParameter("check11");
		String _agree12 =request.getParameter("check12");
		String _agree13 =request.getParameter("check13");
		String _agree14 =request.getParameter("check14");
		String _agree15 =request.getParameter("check15");



	
		String agree1 ="yes";
		String agree2 ="yes";

		String agree3 ="yes";
		String agree4 ="yes";
		

		String agree5 ="yes";
		String agree6 ="yes";
		

		String agree7 ="yes";
		String agree8 ="yes";
		

		String agree9 ="yes";
		String agree10 ="yes";
		

		String agree11 ="yes";
		String agree12 ="yes";
		

		String agree13 ="yes";
		String agree14 ="yes";
		
		String agree15 ="yes";
		
		
		

		if(_agree1!=null&&!_agree1.equals(""))
			agree2=_agree2;

		if(_agree2!=null&&!_agree2.equals(""))
			agree2=_agree2;

		if(_agree3!=null&&!_agree3.equals(""))
			agree3=_agree3;

		if(_agree4!=null&&!_agree4.equals(""))
			agree4=_agree4;

		if(_agree5!=null&&!_agree5.equals(""))
			agree5=_agree5;

		if(_agree6!=null&&!_agree6.equals(""))
			agree6=_agree6;

		if(_agree7!=null&&!_agree7.equals(""))
			agree7=_agree7;
		
		
		if(_agree8!=null&&!_agree8.equals(""))
			agree8=_agree8;
		if(_agree9!=null&&!_agree9.equals(""))
			agree9=_agree9;

		if(_agree9!=null&&!_agree9.equals(""))
			agree9=_agree9;
		
		
		if(_agree10!=null&&!_agree10.equals(""))
			agree10=_agree10;
		if(_agree11!=null&&!_agree11.equals(""))
			agree11=_agree11;

		if(_agree12!=null&&!_agree12.equals(""))
			agree12=_agree12;
		
		
		if(_agree13!=null&&!_agree13.equals(""))
			agree13=_agree13;
		
		if(_agree14!=null&&!_agree14.equals(""))
			agree14=_agree14;
		if(_agree15!=null&&!_agree15.equals(""))
			agree15=_agree15;
	
		System.out.println(_agree1);
		System.out.println(_agree2);
	
		if(_agree1==null&&_agree2==null&&_agree3==null&&_agree4==null&&_agree5==null&&_agree6==null&&_agree7==null&&_agree8==null&&_agree9==null&&_agree10==null&&_agree11==null&&_agree12==null&&_agree13==null&&_agree14==null&&_agree15==null)
		response.sendRedirect("cm-recocm?error=1"); 
		if(_agree1==null||_agree2==null||_agree3==null||_agree4==null||_agree5==null||_agree6==null||_agree7==null||_agree8==null||_agree9==null||_agree10==null||_agree11==null||_agree12==null||_agree13==null||_agree14==null||_agree15==null)
		response.sendRedirect("cm-recocm?error=1"); 
		else		
			response.sendRedirect("cm-recocm2"); 

		
	}
	
	protected void doGet(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
				
		request.getRequestDispatcher("/WEB-INF/views/customer/menu/cm-recocm.jsp").forward(request, response);
	}
		
	


}
