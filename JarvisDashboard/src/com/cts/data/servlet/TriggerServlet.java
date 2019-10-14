package com.cts.data.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lowes.fdd.data.util.ConfigData;

public class TriggerServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		inputProcess(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		inputProcess(request, response);

	}

	public void inputProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String stack = request.getParameter("stack");
		
		System.out.println("Selected Stack ==> " + stack);
		
		request.setAttribute("triggerEvent", stack);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/home.jsp");

		requestDispatcher.forward(request, response);
	}
	
	
	private boolean triggerProdInfraJob(String triggerEvent) {

		System.out.println("CALL JENKINS JOB !!! ");
		
		String JENKINS_DEPLOY_JOB = "http://jenkinshost:8080/job/CloudDeploy/buildWithParameters";
		String JENKINS_USER_TOKEN = "USER:TOCKEN";
		

		String command = "curl -X POST " + JENKINS_DEPLOY_JOB + " --data triggerEvent=" + triggerEvent
				+ " --user " + JENKINS_USER_TOKEN;

		try {
			Process process = Runtime.getRuntime().exec(command);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}