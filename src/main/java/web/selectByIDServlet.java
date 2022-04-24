package web;

import pojo.Brand;
import service.service1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/selectByIDServlet")
public class selectByIDServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        service1 service1 = new service1();
        Brand brand1 = service1.selectbyid(Integer.parseInt(id));
        request.setAttribute("brand1",brand1);
        request.getRequestDispatcher("/update.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
