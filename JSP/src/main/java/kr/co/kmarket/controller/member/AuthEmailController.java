package kr.co.kmarket.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.JsonObject;

import kr.co.kmarket.service.KmMemberService;

@WebServlet("/member/authEmail.do")
public class AuthEmailController extends HttpServlet{

	private static final long serialVersionUID = 3612483702041445448L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private KmMemberService service = KmMemberService.instance;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type"); // authEmail.js 에서 AJAX로 GET 전송한 거 수신
		String uid = req.getParameter("uid");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		int result = 0;
		int status = 0;
		
		if(type.equals("FIND_ID")) {
			
			// 아이디 찾기할 때 이메일 인증
			result = service.selectCountNameAndEmail(name, email); 
			
			// 회원가입된 이메일인지 DB에서 select 하고, 존재하면 인증코드 전송한다
			if(result == 1) { 
				service.sendCodeByEmail(email);
			}
			
			// JSON 생성
			JsonObject json = new JsonObject();
			json.addProperty("result", result);
			json.addProperty("status", status);
			
			// JSON 출력
			PrintWriter writer = resp.getWriter(); // resp로 전송해야지
			writer.print(json.toString());
		}
		
		// dopost 로 인증완료 작성할 것
	}

}