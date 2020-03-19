package com.hyt.servlet;

import java.io.IOException;



import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hyt.code.CreateVerificationCode;
import com.hyt.code.CreateVerificationCodeImage;

/**
 * Servlet implementation class ImageCodeServlet
 */
@WebServlet("/ImageCodeServlet")
public class ImageCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vericode= CreateVerificationCode.getSecurityCode();
        HttpSession session=request.getSession();
        session.setAttribute("verityCode",vericode);
        //���÷��ص�����
        response.setContentType("img/jpeg");
        //�������������Ӧ����--��֤��ͼƬ����һ�ξ�Ҫˢ��һ�Σ����Բ����л������
        response.setHeader("Pragma","No-cache");
        response.setHeader("Cache-Control","no-cache");
        //������֤��ʧЧʱ��
        response.setDateHeader("Expires",0);
        //���ֽ�������ȥ������img��src����ȥ��������
//        ImageIO.write(new CreateVerificationCodeImage(vericode).createImage(),"JPEG",response.getOutputStream());
        
        ServletOutputStream out = response.getOutputStream();

        ImageIO.write(new CreateVerificationCodeImage(vericode).createImage(),"jpeg", out);


    }

	}

