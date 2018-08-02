package com.mvc.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mvc.entityReport.User;

public interface StaffInfoRepository extends JpaRepository<User, Integer>{
	// 筛选出所有角色列表
	//	@Query("select r from Role r where role_state=0")
	//	public List<User> findAlls();
	// 根据userNum查询用户账号是否存在,返回1存在，返回0不存在
	
	@Query("select count(id) from User u where user_acct = :user_acct and user_isdelete=0")
		public Long countByUserAcct(@Param("user_acct") String user_acct);

}
