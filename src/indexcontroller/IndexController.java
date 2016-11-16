package indexcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String welcome() {

		return "t:index";
	}
	
	@RequestMapping("/login.nhn")
	public String loginView() {
		return "login/loginView";	// �α���
	}
	
	@RequestMapping("/member.nhn")
	public String memberView() {
		return "login/memberView";
	}
	
	@RequestMapping("/cart")
	public String cartVeiw(){
		return "t:cart";
	}
	
	@RequestMapping("/member/join2")
	public String memberView2() {	// ȸ������
		return "t:join";
	}
	
}