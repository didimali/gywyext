package com.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.mvc.entityReport.EquipRoom;

public interface EquipRoomRepository extends JpaRepository<EquipRoom, Integer> {	

	//根据ID获取安装位置信息
	@Query("select er from EquipRoom er where equip_room_id=:equip_room_id ")
	public EquipRoom selectEquipRoomById(@Param("equip_room_id") Integer equip_room_id);

	//获取安装位置信息
	@Query("select er from EquipRoom er where equip_room_isdeleted=0")
	public List<EquipRoom> getEquipRoomInfo();
	
	//根据ID获取安装位置信息
	@Query("select er from EquipRoom er where proj_id=:proj_id")
	public List<EquipRoom> getRoomByProId(@Param("proj_id") Integer proj_id);

}