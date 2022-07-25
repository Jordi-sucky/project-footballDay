package com.project.footballkorea.files.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.project.footballkorea.files.model.Rank;

@Repository
public interface rankDAO {

	public List<Rank> rankListDAO();
}
