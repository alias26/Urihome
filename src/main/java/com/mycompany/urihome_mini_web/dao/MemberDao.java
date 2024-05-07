package com.mycompany.urihome_mini_web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.dto.Pager;

@Mapper
public interface MemberDao {
	public Member selectByMid(String username);
	public int insert(Member member);
	public int count();
	public List<Member> selectByPage(Pager pager);
	public int deleteByMid(String mid);
}
