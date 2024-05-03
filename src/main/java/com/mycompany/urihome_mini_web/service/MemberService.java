package com.mycompany.urihome_mini_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.MemberDao;
import com.mycompany.urihome_mini_web.dto.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberService {
	@Autowired
	private MemberDao memberDao;

	public void join(Member member) {
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		member.setMpassword(passwordEncoder.encode(member.getMpassword()));
		member.setMzip("00000");
		member.setMaddress("empty");
		member.setMdetailAddress("empty");

		if ((member.getMtel2() == "" || member.getMtel2() == null) || (member.getMtel3() == "" || member.getMtel3() == null)) {
			member.setMtel(null);
		}else {
			member.setMtel(member.getMtel1() + "-" + member.getMtel2() + "-" + member.getMtel3());
		}
		
		if(member.getAgree3()==null) member.setAgree3(false);
		
		member.setMphone(member.getMphone1() + "-" + member.getMphone2() + "-" + member.getMphone3());
		member.setMrole("ROLE_USER");
		log.info(member.getMtel());
		log.info(member.getMtel2());
		log.info(member.getMtel3());
		log.info(""+member.getMid());
		log.info(""+member.getAgree1());
		memberDao.insert(member);
	}

}
