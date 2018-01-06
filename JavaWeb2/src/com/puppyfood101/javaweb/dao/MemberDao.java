package com.puppyfood101.javaweb.dao;

import com.puppyfood101.javaweb.entity.Member;
import com.puppyfood101.javaweb.entity.MyPageView;

public interface MemberDao  {

   int insert(Member member);

   Member get(String id);
   
   Member get1(String password);

   String getId(String memberId);
   
   MyPageView selectMember(String id);

   String getDefaultRoleId(String memberId);

}