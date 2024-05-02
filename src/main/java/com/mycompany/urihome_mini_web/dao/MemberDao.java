package com.mycompany.urihome_mini_web.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.Member;

@Mapper
public interface MemberDao {

	public Member selectByMid(String username);

}
