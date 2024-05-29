package com.pro3.dao;

import java.util.List;

import com.pro3.dto.Member;

public interface MemberDAO {
	public List<Member> getMemberList();
	public Member getMember(String id);
	public int memberCount();
	public void insMember(Member member);
	public void upMember(Member member);
	public void delMember(String id);
}
