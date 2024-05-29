package com.pro3.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String addr1;
	private String addr2;
	private String postcode;
	private String birth;
	private int point;
	private String regdate;
	public Object getId() {
		// TODO Auto-generated method stub
		return null;
	} 

}
