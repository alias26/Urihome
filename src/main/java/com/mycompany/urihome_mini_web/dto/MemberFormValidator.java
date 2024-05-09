package com.mycompany.urihome_mini_web.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import lombok.extern.slf4j.Slf4j;


@Slf4j
public class MemberFormValidator implements Validator {
	
	@Override
	public boolean supports(Class<?> clazz) {		
		log.info("실행");
		return Member.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		Member member = (Member) target;
		
		//아이디 검사
		String mid = member.getMid();
		String midPattern ="(?=.*\\d)(?=.*[A-Za-z]).{6,20}";
		if(mid==null || mid.equals("")) {
			errors.rejectValue("mid", null, "아이디는 반드시 입력해야 합니다.");
		} else if(mid.length() < 6 || mid.length() > 12) {
			errors.rejectValue("mid", null, "아이디는  6자 이상 20자 이하로 입력해야 합니다.");
		} else if(!!Pattern.matches(midPattern, mid)) {
			errors.rejectValue("mid", null, "아이디는 알파벳, 숫자를 포함해야 합니다.");
		}
		
		
		//비밀번호 검사
		String mpassword = member.getMpassword();
		String mpasswordPattern = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}";
		if(mpassword==null || mpassword.equals("")) {
			errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력해야 합니다.");
		} else if(mpassword.length() < 8 || mpassword.length() > 15) {
			errors.rejectValue("mpassword", null, "비밀번호는 8자이상 15자 이하로 입력 되어야 합니다.");
		}else if(!Pattern.matches(mpasswordPattern, mpassword)) {
			errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함해야 합니다..");
		}		
		
	}

	
}
