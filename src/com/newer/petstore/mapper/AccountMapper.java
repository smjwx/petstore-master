package com.newer.petstore.mapper;

import org.apache.ibatis.annotations.Select;

public interface AccountMapper {

	/**
	 * 登录
	 * @param user 用户名
	 * @return
	 */
	@Select("select password from accounts where name = #{user}")
	String login(String user);
}
