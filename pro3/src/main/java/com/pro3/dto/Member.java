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
	private	int birth;
	private String email; 
	private int tel;
	private String addr; 

}
