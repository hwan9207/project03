package com.pro3.ctrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pro3.dto.Member;
import com.pro3.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("list.do")
	public String getMemberList(Model model) {
		List<Member> list = memberService.getMemberList();
		model.addAttribute("list", list);
		return "member/memberList";
	}
	
	@RequestMapping("join.do")
	public String insMember(@ModelAttribute Member member, Model model) {
		memberService.insMember(member);
		return "member/join";
	}
	
}
