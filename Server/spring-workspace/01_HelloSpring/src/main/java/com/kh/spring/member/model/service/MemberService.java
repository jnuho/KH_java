package com.kh.spring.member.model.service;

import com.kh.spring.member.model.vo.Member;

public interface MemberService {
  Member selectMemberOne(Member m);
  int insertMember(Member m);
}