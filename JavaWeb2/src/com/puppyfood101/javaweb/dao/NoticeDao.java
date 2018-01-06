package com.puppyfood101.javaweb.dao;

import java.util.List;

import com.puppyfood101.javaweb.entity.Board;
import com.puppyfood101.javaweb.entity.CommunityView;

public interface NoticeDao {

	List<CommunityView> getList(int page, String query);

	int getCount();

	CommunityView get(int number);

	

	int update(int number, String title, String content);

	int updateHit(int number);

}
