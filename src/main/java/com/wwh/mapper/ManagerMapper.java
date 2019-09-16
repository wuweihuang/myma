package com.wwh.mapper;

import com.wwh.entity.Manager;
import com.wwh.entity.UpFile;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface ManagerMapper {
//-----------管理员登录
    public Manager ManLogin(@Param("manid") String manid,@Param("pwd") String pwd);
    //----管理员列表
    //--------文件列表
    public List<UpFile> fileList(Map<String,Object> map);
}
