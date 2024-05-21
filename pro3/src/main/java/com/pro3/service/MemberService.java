package com.pro3.service;

import java.util.List;

import com.pro3.dto.Member;

public interface MemberService {
	public List<Member> getMemberList();
	public void insMember(Member memer);
}
