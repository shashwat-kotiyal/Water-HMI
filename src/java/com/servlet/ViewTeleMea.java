
package com.servlet;

import com.Operation.TeleOperation;
import com.action.TeleMeasurandAction;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHASHWAT
 */

public class ViewTeleMea extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        TeleOperation tco=new TeleMeasurandAction();
        
        String xml=tco.view(request.getParameter("tag_id"));
        if (xml!=null)
        {
            PrintWriter pw = response.getWriter();
            pw.println(xml);
        }
    }

}