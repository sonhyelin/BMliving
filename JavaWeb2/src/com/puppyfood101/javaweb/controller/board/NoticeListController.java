package com.puppyfood101.javaweb.controller.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.dao.NoticeDao;
import com.puppyfood101.javaweb.entity.CommunityView;
import com.puppyfood101.javaweb.jdbcdao.JdbcNoticeDao;


@WebServlet("/customer/board/list")
public class NoticeListController extends HttpServlet{
         @Override
         protected void service(
               HttpServletRequest request, 
               HttpServletResponse response) throws ServletException, IOException{ 
         
        	 
         String _query = request.getParameter("title");
         String _page = request.getParameter("p");
            
         int page = 1; //������ �ȵ��� ����� �⺻��
         
         if(_page != null && !_page.equals("")) //Ȥ�ó� ���� �Ǿ��ٸ�
            page = Integer.parseInt(_page); //���ڿ��� ���ڷ� ��ȯ
         
         
         String query=""; //�⺻��
         
         
         if(_query != null && !_query.equals(""))
        	 query=_query;
         /*----------------------------------------------------*/

         NoticeDao noticeDao = new JdbcNoticeDao();
         
         List<CommunityView> list = new ArrayList<CommunityView>();
         list = noticeDao.getList(page, query);
     
         
         request.setAttribute("list", noticeDao.getList(page, query));
         request.setAttribute("count", noticeDao.getCount());
      
      request.getRequestDispatcher("/WEB-INF/views/customer/board/list.jsp").forward(request,response); // �̾ ���
   }
}
