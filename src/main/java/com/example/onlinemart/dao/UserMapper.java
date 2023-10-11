package com.example.onlinemart.dao;

import com.example.onlinemart.entity.MyUserDetail;
import com.example.onlinemart.entity.Role;
import com.example.onlinemart.entity.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

@Mapper
public interface UserMapper {
    @Options(useGeneratedKeys = true,keyColumn = "id",keyProperty = "id")
    @Insert("INSERT INTO user VALUES (NULL,#{username},#{password},#{gender},#{phoneNum},#{address})")
    public void insertUser(User user);

    @Insert("INSERT INTO user_role VALUES (NULL,#{uid},#{rid})")
    public void insertUserRole(@Param("uid")Long uid,@Param("rid")Long rid);

    @Select("SELECT id, username, password, gender, phoneNum, address FROM user "+
    "WHERE username = #{username}")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "phoneNum", property = "phoneNum"),
            @Result(column = "address", property = "address"),
            @Result(column = "id", property = "roles", many = @Many(
                    select = "com.example.onlinemart.dao.UserMapper.findRolesByUid",
                    fetchType = FetchType.EAGER
            ))
    })
    public MyUserDetail findUserByUsername(String username);

    @Select("SELECT id, name FROM role WHERE id IN " +
            "(SELECT roleId FROM user_role WHERE userId = #{uid})")
    public List<Role> findRolesByUid(Long uid);

    @Select("SELECT username FROM user WHERE id = #{id}")
    public String findUsernameById(Long id);
}